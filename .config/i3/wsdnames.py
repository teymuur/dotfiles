#!/usr/bin/env python3
# _*_ coding: utf-8 _*_

from i3ipc import Connection, Event

max_length = 30

i3 = Connection()


def app_name(con):
    return con.app_id or con.window_class or con.name or ''


def assign_generic_name(i3, e):
    try:
        if not e.change == 'rename':
            con = i3.get_tree().find_focused()
            if not con.type == 'workspace':
                if not e.change == 'new':
                    ws_old_name = con.workspace().name
                    ws_num = con.workspace().num
                    name = "%s: %s" % (ws_num, app_name(con))
                    if len(name) > max_length:
                        name = name[:max_length - 1] + "…"
                    i3.command('rename workspace "%s" to "%s"' % (
                        ws_old_name.replace('"', '\\"'), name.replace('"', '\\"')))
                else:
                    con = i3.get_tree().find_by_id(e.container.id)
                    ws_num = con.workspace().num
                    a_name = app_name(con)
                    if a_name and ws_num:
                        name = "%s: %s" % (ws_num, a_name)
                        i3.command('rename workspace "%s" to "%s"' % (
                            ws_num, name.replace('"', '\\"')))
            else:
                ws_num = con.workspace().num
                i3.command('rename workspace to "%s"' % ws_num)
    except:
        pass


def main():
    i3.on(Event.WORKSPACE_FOCUS, assign_generic_name)
    i3.on(Event.WINDOW_FOCUS, assign_generic_name)
    i3.on(Event.WINDOW_TITLE, assign_generic_name)
    i3.on(Event.WINDOW_CLOSE, assign_generic_name)
    i3.on(Event.WINDOW_NEW, assign_generic_name)
    i3.on(Event.BINDING, assign_generic_name)

    i3.main()


if __name__ == "__main__":
    main()
