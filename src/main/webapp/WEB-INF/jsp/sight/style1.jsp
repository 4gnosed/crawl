<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div data-reactid="5">
    <style type="text/css" data-preload="paginationCss">
        .pkg_page {
            text-align: right;
            font-size: 14px;
            height: 38px;
            padding: 10px 0 30px
        }

        .pkg_page a {
            display: inline-block;
            float: none;
            min-width: 36px;
            padding: 0;
            height: 36px;
            line-height: 36px;
            vertical-align: middle;
            text-align: center;
            color: #0065bb;
            border: 1px solid #ccc;
            background-color: #fff
        }

        .pkg_page .up {
            margin-right: 10px
        }

        .pkg_page .nocurrent, .pkg_page .nocurrent:hover {
            cursor: default;
            border: 1px solid #ccc;
            color: #ccc
        }

        .pkg_page a.up {
            position: relative
        }

        .pkg_page .down b, .pkg_page .up b {
            display: inline-block;
            width: 0;
            height: 0;
            line-height: 0;
            vertical-align: -2px
        }

        .pkg_page .up b {
            border-width: 6px 6px 6px 0;
            border-style: dashed solid dashed dashed;
            border-color: transparent #0065bb transparent transparent;
            margin-left: -2px
        }

        .pkg_page .up.nocurrent b, .pkg_page .up.nocurrent:hover b {
            border-color: transparent #ccc transparent transparent
        }

        .pkg_page .up b {
            position: absolute;
            left: 17px;
            top: 13px
        }

        .pkg_page .down b {
            border-width: 6px 0 6px 6px;
            border-style: dashed dashed dashed solid;
            border-color: transparent transparent transparent #0065bb;
            margin-left: 6px;
            position: absolute;
            top: 13px
        }

        .pkg_page .current, .pkg_page .current:hover {
            color: #fff;
            border: 1px solid #3da0e7;
            background-color: #64bbfa;
            font-weight: 700
        }

        .pkg_page_ellipsis {
            display: inline-block;
            float: none;
            margin: 0 6px 0 3px
        }

        .pkg_page .down {
            margin-left: 10px;
            width: 62px;
            font-size: 12px;
            padding-right: 10px
        }

        .pkg_page a.down {
            position: relative
        }

        .pkg_pagevalue {
            display: inline-block;
            float: none;
            height: 40px;
            vertical-align: middle;
            margin-left: 20px;
            line-height: 26px
        }

        .basefix:after, .layoutfix:after {
            clear: both;
            content: '.';
            display: block;
            height: 0;
            overflow: hidden
        }

        .pkg_pagevalue .pkg_page_num {
            width: 36px;
            height: 29px;
            line-height: 29px;
            padding: 3px;
            border: 1px solid #ccc;
            margin: 0 4px;
            background: #fff;
            box-shadow: 1px 1px 3px #ddd inset
        }

        .pkg_page_submit {
            display: inline-block;
            width: 60px;
            height: 38px;
            line-height: 38px;
            font-size: 12px;
            color: #0065bb;
            margin-left: 10px;
            font-weight: 400;
            cursor: pointer;
            border: 1px solid #ccc;
            background-color: #fff
        }

        .pkg_page_submit:hover {
            border: 1px solid #3da0e7
        }

        .pkg_page a:hover {
            text-decoration: none;
            color: #0065bb;
            border: 1px solid #3da0e7
        }

        .pkg_page .down.nocurrent b, .pkg_page .down.nocurrent:hover b {
            border-color: transparent transparent transparent #ccc
        }</style>
</div>