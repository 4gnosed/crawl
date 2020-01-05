<%@ page contentType="text/html;charset=UTF-8" language="java" %>

.search-tab .current:after {
background-position: right -140px
}

.search-tab .current a {
color: #fff
}

.search-filter {
position: relative;
margin-bottom: 15px;
padding: 11px 130px 9px 100px;
line-height: 20px;
border: #cde1f6 solid 1px;
border-top: none;
background-color: #fff
}

.search-filter .word {
position: absolute;
top: 11px;
left: 25px
}

.search-filter span {
display: inline-block;
padding: 1px 6px
}

.search-filter .more {
color: #4f85c4
}

.search-filter li {
margin-bottom: 6px;
padding: 1px 6px;
float: left;
color: #4167bd;
cursor: pointer
}

.search-filter .btn-more {
position: absolute;
bottom: 15px;
right: 85px;
padding: 0 16px 0 5px;
color: #4c55a7;
background: #f4fbff;
border: 1px solid #cee1f4;
cursor: pointer
}

.filter-fold .btn-more:after {
content: "";
position: absolute;
top: 7px;
right: 5px;
width: 0;
height: 0;
border-left: 5px solid transparent;
border-right: 5px solid transparent;
border-top: 6px solid #4c7cb8
}

.filter-fold ul {
max-height: 56px;
overflow: hidden
}

.filter-open .btn-more:after {
content: "";
position: absolute;
top: 7px;
right: 5px;
width: 0;
height: 0;
border-left: 5px solid transparent;
border-right: 5px solid transparent;
border-bottom: 6px solid #4c7cb8
}

.search-filter .selected {
color: #fff;
background: #58baf8
}

.spot-list {
float: left;
width: 900px
}

.spot-list .view-spot {
position: relative;
margin-bottom: 15px;
padding: 10px;
background-color: #fff;
border: 1px solid #ddd
}

.spot-list .view-spot:hover {
border-color: #58baf8;
box-shadow: 0 0 2px 1px #dfe8ee
}

.spot-list .spot-img {
position: relative;
float: left;
width: 200px;
height: 130px;
background: url(https://pages.c-ctrip.com/ticket/online/icon-bg.svg) no-repeat;
background-size: auto 25px;
background-position: center;
overflow: hidden
}

.spot-list .spot-icon-ads {
position: absolute;
top: 0;
left: 0;
padding: 0 5px 0 2px;
height: 16px;
line-height: 16px;
font-size: 12px;
color: #cbddf4;
background: #64a0e4;
border-bottom-right-radius: 7px
}

.spot-list .f-logo {
margin-right: 2px;
color: #fff;
vertical-align: -1px
}

.spot-list .spot-info {
float: left;
padding: 0 120px 0 20px;
width: 535px;
line-height: 30px;
font-size: 14px;
color: #666
}

.spot-list .spot-info h4 {
margin-top: 5px;
font-size: 20px;
color: #0b67b8;
overflow: hidden;
white-space: nowrap;
text-overflow: ellipsis
}

.spot-list .spot-info h4 em {
cursor: pointer
}

.spot-list .spot-info h4 span {
margin-left: 15px;
font-size: 14px
}

.spot-list .spot-comment {
height: 30px
}

.spot-list .spot-comment span {
margin-right: 20px
}

.spot-list .spot-comment .spot-score {
position: relative;
margin-right: 10px;
padding-left: 80px;
height: 30px
}

.spot-list .spot-label {
height: 30px;
overflow: hidden
}

.spot-list .spot-label .label {
display: inline-block;
margin-right: 10px;
padding: 0 5px;
height: 18px;
line-height: 18px;
font-size: 12px
}

.spot-list .spot-label .label-blue {
color: #65b8f4;
background-color: #e7f6ff
}

.spot-list .spot-label .label-orange {
color: #f99136;
background-color: #fff5ec
}

.spot-list .spot-label .label-purple {
color: #a0b5f9;
background-color: #f2f3ff
}

.spot-list .desc {
overflow: hidden;
white-space: nowrap;
text-overflow: ellipsis
}

.spot-list .price-box {
position: absolute;
top: 30px;
right: 20px;
text-align: right;
color: #b6b6b6
}

.spot-list .price-num {
height: 37px
}

.spot-list .price-num span {
font-size: 30px;
color: #fb7b38
}

.spot-list .btn-booking {
position: relative;
display: inline-block;
padding-right: 10px;
width: 100px;
height: 30px;
text-align: center;
font-size: 18px;
color: #fff;
background-color: #f99136;
border-radius: 5px;
cursor: pointer
}

.spot-list .btn-booking:before {
content: "";
position: absolute;
top: 9px;
right: 10px;
width: 0;
height: 0;
border-top: 7px solid transparent;
border-bottom: 7px solid transparent;
border-left: 9px solid #fff
}

.spot-list .btn-booking:after {
content: "";
position: absolute;
top: 9px;
right: 12px;
width: 0;
height: 0;
border-top: 7px solid transparent;
border-bottom: 7px solid transparent;
border-left: 9px solid #f99136
}

.spot-list .btn-booking-orange {
background-color: #fb7b38
}

.spot-list .btn-booking-orange:after {
border-left-color: #fb7b38
}

.spot-list .sale {
line-height: 26px
}

.spot-noresult {
margin-top: 10px;
padding-bottom: 30px;
width: 900px
}

.sr-nosearchresult {
margin-bottom: 10px;
border: 2px solid #81b6f1;
background-color: #fff;
font-size: 14px;
position: relative;
padding: 13px 0 13px 52px;
zoom: 1
}

.sr-nosearchresult .f-info {
position: absolute;
top: 13px;
left: 20px;
width: 24px;
height: 24px;
line-height: 24px;
text-align: center;
font-size: 26px;
color: #fff;
background: #56a2ed;
border-radius: 50%;
overflow: hidden
}

.sr-nosearchresult p {
padding-bottom: 5px;
font-weight: 700
}

.sr-nosearchresult .note span {
float: left;
color: #666
}

.spot-noresult .recommend {
margin-bottom: 10px;
padding: 12px 8px;
background-color: #fff;
border: 1px solid #ddd;
box-shadow: 1px 1px 1px #ebeef0
}

.spot-noresult .recommend h2 {
padding-left: 12px;
font-size: 14px;
font-weight: 700
}

.spot-noresult .recommend li {
float: left;
position: relative;
margin: 12px 12px 0;
width: 152px
}

.spot-noresult .recommend .spot-img {
width: 152px;
height: 84px
}

.spot-noresult .recommend h5 {
margin-top: 3px;
height: 38px;
line-height: 20px;
font-size: 12px;
color: #4d4d4d;
overflow: hidden
}

.spot-noresult .recommend p {
margin-top: 3px;
line-height: 24px;
color: #ff7b17
}

.spot-noresult .recommend strong {
margin: 0 3px;
font-size: 16px
}

.spot-noresult .recommend a {
position: absolute;
top: 0;
bottom: 0;
right: 0;
left: 0;
cursor: pointer
}

.bottom_advantage {
margin: 0 auto;
padding: 20px 0 15px;
border-bottom: 1px solid #dce6ea;
overflow: hidden
}

.bottom_advantage dl {
position: relative;
float: left;
padding-left: 80px;
height: auto;
overflow: hidden
}

.bottom_advantage dt {
float: left;
padding-bottom: 5px;
width: 100%;
color: #858585;
font: 16px microsoft yahei
}

.bottom_advantage dd {
float: left;
width: 120px;
padding: 2px 0
}

.bottom_advantage dd a {
color: #858585
}

.bottom_advantage .security {
width: 421px
}

.bottom_advantage .security:after {
content: "";
position: absolute;
top: 0;
left: 25px;
width: 39px;
height: 42px;
background: url(https://pages.c-ctrip.com/ticket/online/footer.png?20191205173808);
background-position: 0 0
}

.bottom_advantage .help {
width: 275px
}

.bottom_advantage .help:after {
content: "";
position: absolute;
top: 0;
left: 19px;
width: 48px;
height: 42px;
background: url(https://pages.c-ctrip.com/ticket/online/footer.png?20191205173808);
background-position: -40px 0
}

.bottom_advantage .guide {
width: 242px
}

.bottom_advantage .guide:after {
content: "";
position: absolute;
top: 0;
left: 22px;
width: 46px;
height: 39px;
background: url(https://pages.c-ctrip.com/ticket/online/footer.png?20191205173808);
background-position: -88px 0
}

@media screen and (max-width: 1200px) {
.main-content {
width: 980px
}

.search-wrap .main_search_txt {
width: 350px
}

.hot-search {
width: 295px
}

.spot-list {
width: 790px
}

.spot-list .spot-info {
width: 425px
}

.spot-noresult {
width: 790px
}

.spot-noresult .recommend li {
width: 130px
}

.spot-noresult .recommend .spot-img {
width: 130px
}

.bottom_advantage dd {
width: 115px
}

.bottom_advantage .security {
width: 366px
}

.bottom_advantage .help {
width: 230px
}

.bottom_advantage .guide {
width: 142px
}
}

.ticket_bookingset_tit {
position: relative;
padding: 10px 55px 10px 15px;
font-size: 15px;
line-height: 1.3;
color: #000
}

.ticket_bookingset_tit2 {
padding-left: 15px;
height: 50px;
line-height: 50px;
font-size: 15px;
color: #000;
background: #efefef
}

.ticket_bookingset_tit2 .tips {
margin-left: 7px;
font-size: 12px;
color: #999
}

.ticket_bookingset_tit .ticket_detailed {
margin-top: 5px
}

.ticket_bookingset_tit .ticket_detailed a {
color: #333
}

.ticket_bookingset_tit .ticket_detailed:after {
border-left-color: #efefef
}

.ticket_bookingset_tit .ticket_detailed:before {
border-left-color: #333
}

.ticket-date-box li {
padding: 0 0 0 15px;
line-height: 50px;
overflow: hidden;
border: 0
}

.ticket-date-box.list_st_border .list_st_border_content {
padding-right: 15px;
border-width: 0;
border-bottom-width: 1px;
-webkit-border-image: url(https://pages.c-ctrip.com/ticket/h5/bg_border_light.png?20191205173808) 2 stretch;
border-image: url(https://pages.c-ctrip.com/ticket/h5/bg_border_light.png?20191205173808) 2 stretch
}

.ticket-date {
position: relative;
float: right;
padding: 6px 0 3px 0;
margin: 7px 2% 7px 0;
height: 39px;
width: 59px;
line-height: 14px;
color: #099fde;
text-align: center;
border: #dbdbdb solid 1px;
border-radius: 6px;
box-sizing: border-box;
-webkit-box-sizing: border-box;
font-size: 13px
}

.ticket-date:first-of-type {
width: 88px;
margin-right: 0
}

.ticket-date.ticket-date2 {
line-height: 39px;
padding-top: 0;
padding-bottom: 0
}

.ticket-date-dis {
color: rgba(0, 0, 0, .4)
}

.ticket-date em {
font-size: 12px;
margin-right: 2px
}

.ticket-date-selected {
border: #099fde solid 1px;
color: #099fde
}

.list_st_border {
background: #fff
}

.list_st_border .ticket-date .f-chevron-right {
right: 0;
color: #3ab2e5
}

.list_st_border li {
position: relative;
line-height: 43px
}

.ticket_buy_shares {
font-size: 13px;
color: #333
}

.room_num {
right: 15px
}

.ticket-defaults-txt {
font-size: 13px;
vertical-align: 1px;
color: rgba(0, 0, 0, .4)
}

.ticket_booking_text_blue, .ticket_name_list .ticket_booking_text_blue {
color: #099fde;
font-size: 15px
}

.ticket_echo {
display: inline-block;
line-height: 16px;
vertical-align: middle
}

.ticket_echo2 {
display: table-cell;
position: absolute;
top: 50%;
left: 75px;
padding-right: 76px;
font-size: 13px;
line-height: 16px;
-webkit-transform: translateY(-50%);
-moz-transform: translateY(-50%);
-o-transform: translateY(-50%);
-ms-transform: translateY(-50%);
transform: translateY(-50%)
}

.ticket_name_list {
margin-right: 15px
}

.ticket_name_list .ticket_name_item {
line-height: 50px
}

.ticket_name_list .ticket_name_text {
display: inline-block;
padding: 7px 0;
font-size: 13px;
line-height: 16px;
vertical-align: middle
}

.ticket_name_list .ticket_name_text .green {
color: #88ce35;
vertical-align: -2px
}

.single label {
float: left;
display: inline-block;
width: 75px;
margin-right: 0;
font-size: 13px;
color: #333
}

.ticket_reduction {
position: absolute;
right: 30px;
top: 0;
font-size: 15px;
color: #ff7d13
}

.ticket_reduction dfn {
padding-left: 2px;
font-size: 12px
}

.tikcet-insurance-title {
position: relative;
margin-top: 6px;
padding-left: 15px;
height: 29px;
line-height: 29px;
font-size: 13px
}

.tikcet-insurance-title .name {
display: inline-block;
width: 70%
}

.tikcet-insurance-title .replace {
float: right;
padding-right: 26px;
color: #099fde
}

.tikcet-insurance-title .f-chevron-right {
position: absolute;
top: 50%;
right: 11px;
margin-top: -15px;
color: #099fde
}

.tikcet-insurance-list li {
font-size: 13px
}

.tikcet-insurance-list .about {
font-size: 12px;
float: right
}

.tikcet-insurance-list .insurance_price {
color: #ff7d13;
font-size: 18px;
margin-right: 5px
}

.tikcet-insurance-list .insurance_price dfn {
font-size: 15px
}

.tikcet-insurance-list .num {
margin-left: 5px;
font-size: 13px
}

.list_st_border.tikcet-insurance-list .f-chevron-right {
color: #099fde
}

.ticket_bookingset_tit.booking-ticket-info {
background: #efefef
}

.certificate_name {
color: #000
}

.package_price .package_text {
display: inline;
vertical-align: 2px
}

.package_name {
padding: 7px 0;
line-height: 16px
}

.vouchers_box.vouchers_box_pb {
padding-bottom: 70px
}

.ticket-date-box .echo-text, .ticket-date-box .placeholder-text {
display: inline-block;
margin: 16px 20px 16px 0;
font-size: 13px;
color: #999;
vertical-align: top;
line-height: 18px
}

.ticket-date-box textarea.echo-text {
width: 100%;
background: 0 0
}

.ticket-date-box .echo-text {
font-size: 15px;
color: #000
}

.additional-text {
display: block
}

.additional-text:nth-last-of-type(n+2) {
margin-bottom: 4px
}

.booking-list .g-choose-flag .item_label_title {
left: 12px;
width: 72px;
padding: 6px 0;
overflow: hidden;
box-sizing: border-box;
-webkit-box-sizing: border-box;
word-break: break-all;
word-wrap: break-word
}

.g-choose-flag.g-error:first-child {
margin-left: 0;
padding-left: 30px
}

.ticket-date-box .roe.g-error .g-error-tip {
position: relative;
display: block;
width: 100%;
line-height: 25px;
margin: -6px 0 0 -15px;
padding-left: 15px;
color: red;
font-size: 13px;
box-sizing: content-box
}

.gocalendar.g-error .g-error-tip {
position: absolute;
left: 12px;
top: 47px;
z-index: 2;
font-size: 13px
}

.coupon-item.g-choose-flag.g-error .g-error-tip, .passenger.g-choose-flag.g-error .g-error-tip {
left: 90px
}

.ticket-date-box .numcontainer {
margin-right: 15px
}

.pop-detail .ticket-refund-item .ticket-name {
float: left;
width: 58%
}

.pop-detail .ticket-refund-item .ticket-price {
width: 50px;
font-size: 15px
}

.pop-detail .ticket-refund-item .ticket-copies {
font-size: 13px;
padding-top: 2px
}

.booking-container .ticket-booking-notice {
margin-top: -10px
}

.list_st_border li:active .g-error-tip {
background: 0 0
}

.mt-10 {
margin-top: -10px
}

.quota_tip {
position: relative;
margin-top: 10px;
padding: 7px 10px;
line-height: 16px;
background: #fffbed;
font-size: 12px;
color: #b7904b;
border-radius: 5px
}

.linked-more a {
font-size: 12px;
color: #646464
}

.linked-more .f-chevron-right {
display: inline-block;
vertical-align: middle;
font-size: 13px;
color: #19a0f0
}

.linked-more-insurance a {
color: #19a0f0;
position: relative;
cursor: pointer
}

.linked-more-insurance a.js-moreInsu:after {
content: '';
position: absolute;
top: 50%;
right: -15px;
width: 0;
height: 0;
border-top: 6px solid #19a0f0;
border-right: 6px solid transparent;
border-left: 6px solid transparent;
border-bottom: 6px solid transparent
}

.linked-more-insurance a.js-packUpInsu:after {
content: '';
position: absolute;
top: 50%;
right: -15px;
-webkit-transform: translateY(-50%);
-moz-transform: translateY(-50%);
-o-transform: translateY(-50%);
-ms-transform: translateY(-50%);
transform: translateY(-50%);
width: 0;
height: 0;
border-top: 6px solid transparent;
border-right: 6px solid transparent;
border-left: 6px solid transparent;
border-bottom: 6px solid #19a0f0
}

.linked-more-insurance .f-chevron-right {
vertical-align: -2px;
color: #19a0f0
}

.booking-list .list-item.ins-box {
margin-left: 0;
padding-left: 12px
}

.booking-list .list-item.ins-box .tkt_hairline_t:before {
border-top-width: 1px
}

.date_box {
float: left;
margin: 0 5px 0 0;
padding: 8px 10px;
min-width: 46px;
height: 30px;
text-align: center;
border: #999 solid 1px;
border-radius: 5px;
cursor: pointer
}

#ticket-booking-more-date .date {
transform: translateY(50%);
-webkit-transform: translateY(50%)
}

.date_box:last-child {
min-width: 68px;
height: 48px;
position: relative;
margin-right: 12px;
padding-right: 18px;
box-sizing: border-box
}

.date_box .date {
display: block;
font-size: 12px;
line-height: 14px
}

.date_box .date--special {
line-height: 30px;
color: #19a0f0
}

.date_box.disabled .date {
color: #bbb;
line-height: 15px
}

.date_box.disabled em {
display: block;
font-size: 12px;
line-height: 20px
}

.date_box .price {
display: inline-block;
font-weight: 400;
line-height: 20px;
font-size: 13px;
color: #f40
}

.date_box .price dfn {
margin-right: 2px
}

.date_box.cur {
border: #19a0f0 solid 1px;
background-size: 17px;
position: relative;
font-weight: 700
}

.date_box.cur .price {
font-weight: 700
}

.triangle-cancel {
position: absolute;
top: -2px;
left: 0;
color: #fff;
font-size: 16px
}

.triangle-right-bottom {
display: none;
position: absolute;
bottom: 0;
right: 0;
width: 0;
height: 0;
border-width: 9px;
border-color: transparent #19a0f0 #19a0f0 transparent;
border-style: solid;
border-radius: 0 0 4px 0
}

.cur .triangle-right-bottom {
display: block
}

.booking-list .card {
margin-right: 2px;
font-size: 13px
}

.list-item.passenger-info:nth-of-type(1) .g-text-field.tkt_hairline_t:before {
border-top-width: 0
}

.list-item.passenger-info:nth-of-type(1) .ticket_language_eng .g-text-field.tkt_hairline_t:before {
border-top-width: 1px
}

.list-item.passenger-info:nth-of-type(1) .ticket_language_eng:only-child .g-input-flag:nth-of-type(1) .g-text-field.tkt_hairline_t:before {
border-top-width: 0
}

.list-item.passenger-info:nth-of-type(1) .item + .item .g-text-field.tkt_hairline_t:before {
border-top-width: 1px
}

.list-item.passenger-info:nth-of-type(1) .item + .item .g-input-flag:nth-of-type(1) .g-text-field.tkt_hairline_t:before {
border-top-width: 1px
}

.the-echo-title {
margin-left: 30px;
height: 20px;
line-height: 20px;
font-size: 14px;
color: #333;
font-weight: 700
}

.the-echo-list {
position: relative
}

.person-add-box .the-echo-list .item {
padding-left: 0
}

.the-echo-list .item {
position: relative;
min-height: 50px;
padding-left: 30px
}

.the-echo-list .item-applicant {
position: relative
}

.the-echo-list .tips {
line-height: 50px;
color: #19a0f0
}

.the-echo-list .item-text {
position: absolute;
top: 50%;
left: 100px;
right: 0;
-webkit-transform: translateY(-50%);
transform: translateY(-50%)
}

.the-echo-list--special {
padding-right: 25px
}

.insurance-price {
margin: 0 35px 0 4px
}

.insurance-price .price {
font-size: 16px;
color: #f40;
line-height: 20px
}

.insurance-price .price dfn {
font-size: 14px
}

.insurance-price .text {
font-size: 12px;
color: #000;
margin-right: 5px
}

.insurance-price .text em {
font-size: 14px
}

.elastic-box-y .g-error.g-choose-flag .item-con, .elastic-box-y.g-error.g-choose-flag .item-con {
padding-left: 78px !important
}

@media screen and (max-width: 320px) {
.elastic-box-y .g-error.g-choose-flag .item-con, .elastic-box-y.g-error.g-choose-flag .item-con {
padding-left: 70px !important
}
}

.buy-other {
margin: -2px auto 0;
text-align: center
}

.buy-other .text {
display: inline-block;
margin-bottom: 3px;
font-size: 18px;
line-height: 38px;
color: #19a0f0
}

.buy-other .icon-add {
display: inline-block;
margin-top: 10px;
margin-right: 5px;
width: 18px;
height: 18px;
line-height: 18px;
background: #19a0f0;
border-radius: 50%;
color: #fff;
text-align: center
}

.ticket-contact-import {
position: absolute;
right: 0;
top: 0;
z-index: 1;
padding: 13px 12px 17px 12px;
height: 18px
}

.booking-container {
padding: 0 0 20px
}

.booking-container {
padding-bottom: calc(env(safe-area-inset-bottom) + 70px);
padding-bottom: calc(constant(safe-area-inset-bottom) + 70px)
}

.booking-container .tkt-title {
background: #fff;
padding: 20px 30px
}

.booking-container .tkt-title .title {
font-size: 25px;
font-weight: 700
}

.booking-mod {
margin: 0 0 10px 0;
border: 1px solid #ccc
}

.booking-mod .booking-mod {
border: none;
padding-bottom: 0
}

.booking-mod .mod-t {
height: 5px;
background: #fff
}

.booking-mod .mod-hd .title {
margin-right: 5px;
font-size: 18px;
line-height: 20px;
font-weight: 700
}

.booking-mod .mod-hd .title.disabled {
color: #999
}

.booking-mod .mod-hd .right {
position: absolute;
top: 50%;
right: 12px;
transform: translateY(-50%);
-webkit-transform: translateY(-50%);
height: 24px
}

.booking-mod .mod-bd .bottom {
font-size: 14px;
padding: 20px 30px
}

.booking-mod .mod-hd .tips {
display: inline-block
}

.booking-mod .mod-hd .tips span {
display: inline-block;
vertical-align: middle;
line-height: 18px;
font-size: 13px;
color: #999
}

.booking-mod .mod-bd .title {
padding: 10px 12px 0 0;
margin-bottom: -5px
}

.booking-mod .mod-bd {
background: #fff
}

.booking-mod:last-child {
margin-bottom: 0
}

.booking-mod .booking-title-wrap {
position: relative;
padding-right: 70px
}

.booking-list .list-item {
position: relative;
margin: 0 30px
}

.g-error .g-error-red {
color: red
}

.booking-list .list-item--special {
margin-left: 0;
padding-left: 12px
}

.booking-list .passenger-info {
padding-left: 0
}

.booking-list .passenger-info input.g-text-field-input {
border: 1px solid #ccc;
margin-left: 90px;
padding: 10px;
height: auto;
top: 50%;
width: 300px;
-webkit-transform: translateY(-50%);
transform: translateY(-50%)
}

.booking-list .passenger-info .g-error-tip {
width: auto;
position: absolute;
left: 420px;
top: 50%;
-webkit-transform: translateY(-50%);
transform: translateY(-50%);
padding: 5px 15px
}

.booking-list .passenger-info .g-error-tip:after {
content: '';
position: absolute;
left: -6px;
top: 12px;
width: 10px;
height: 10px;
background-position: 0 -139px;
background-image: url(//pages.c-ctrip.com/ticket/online/ticket_order.png?20191205173808);
background-repeat: no-repeat
}

.booking-list .booking-info-reset {
margin-left: 12px
}

.booking-list-wrap .booking-edit-tip {
height: 35px;
line-height: 35px;
background-color: #eff0f2;
padding: 0 12px;
border-radius: 5px 5px 0 0
}

.booking-list .item-con--h {
line-height: 50px;
min-height: 50px
}

.booking-list .item-label {
position: absolute;
top: 50%;
left: 0;
z-index: 1;
width: 80px;
-webkit-transform: translateY(-50%);
transform: translateY(-50%);
color: #000;
word-wrap: break-word;
font-size: 14px;
line-height: 16px
}

.booking-list.invoice-box .item-label {
width: 75px;
padding-right: 20px
}

.booking-list.invoice-box .item-label .f-info {
right: 14px
}

.unavailable .item-label, .unavailable .item-text {
color: #999
}

.list-item .text-link {
padding-left: 88px;
font-size: 14px
}

.booking-list .item-label--special {
width: auto
}

.booking-list .item-label.cur {
color: #19a0f0
}

.booking-list .item-label .label-text {
display: inline-block;
max-width: 84px;
max-height: 36px;
overflow: hidden;
line-height: 16px;
vertical-align: middle;
color: #000
}

.booking-list .item-con {
padding-left: 88px
}

.elastic-box-y .item-con {
padding-left: 78px !important
}

.booking-list .g-error .item-default-text {
color: red
}

.booking-list .item-date {
float: right;
padding: 10px 0;
position: relative
}

.booking-list .single_date {
font-size: 12px;
padding: 10px 0 10px 80px;
margin-top: 5px
}

.booking-list .numcontainer {
margin: 18px 12px 18px 0
}

.booking-list .item-default-text {
display: inline-block;
width: 100%;
padding: 15px 0;
box-sizing: border-box;
font-size: 13px;
line-height: 19px;
color: #999
}

.booking-list .echo_info {
font-size: 14px;
color: #000
}

.booking-list .ttd-color-darkred {
color: red
}

.booking-list .item-default-text.special {
height: 40px;
line-height: 40px
}

.booking-list .item-info {
height: 50px;
line-height: 50px;
color: #000;
word-wrap: break-word
}

.booking-list .item-info.special {
height: 40px;
line-height: 40px
}

.booking-list .item-echo-text {
width: 100%;
min-height: 50px;
padding: 5px 10px 0 0;
vertical-align: top;
box-sizing: border-box;
padding-left: 0 !important;
margin-top: 0
}

.booking-list .f-chevron-right {
position: absolute;
top: 50%;
right: 10px;
transform: translateY(-50%);
-webkit-transform: translateY(-50%);
color: #19a0f0
}

.booking-list .date_box .f-chevron-right {
right: 2px
}

.booking-list .f-chevron-down {
position: relative;
left: 4px;
top: 2px;
color: #19a0f0;
font-size: 12px;
cursor: pointer
}

.booking-list .item-insurance {
padding: 10px 0;
font-size: 15px;
line-height: 18px;
color: #000;
overflow: hidden
}

.booking-list .item-main {
position: relative;
overflow: hidden
}

.booking-list .list-item-reset {
margin-left: 0 !important
}

.booking-list .booking-item-tip {
color: #ff3f3c;
background-color: #fffdf2;
height: 25px;
line-height: 25px;
padding-left: 12px
}

.booking-list .booking-list .item-con-hreset .item-label {
left: 12px
}

.booking-list .item-main {
position: relative;
overflow: hidden
}

.ticket_language_t35 {
top: 35px !important
}

.booking-language {
position: absolute;
left: 425px;
z-index: 1;
padding: 5px;
height: 25px;
top: 50%;
cursor: pointer;
-webkit-transform: translateY(-50%);
-ms-transform: translateY(-50%);
-o-transform: translateY(-50%);
transform: translateY(-50%);
border: 1px solid #ccc
}

.ticket_language_eng {
position: relative
}

.ticket_language_eng .booking-language {
padding: 5px;
background-color: #fff
}

.ticket_reduction {
position: absolute;
right: 30px;
top: 0;
font-size: 15px;
color: #ff7d13
}

.ticket_reduction dfn {
padding-left: 2px;
font-size: 12px
}

.item-echo-text::-webkit-input-placeholder {
line-height: 40px;
font-size: 13px
}

.item-echo-text::-moz-placeholder {
line-height: 40px;
font-size: 13px
}

.item-echo-text:-ms-input-placeholder {
line-height: 40px;
font-size: 13px
}

.item-echo-text {
box-sizing: border-box;
padding-top: 5px;
padding-bottom: 5px;
margin-left: -2px
}

.discount {
color: #f40
}

.coupon-list .item-text .bracket {
margin-left: -6px;
margin-right: -3px
}

.g-text-field .g-text-box {
position: relative;
padding-left: 88px
}

.g-text-field input.g-text-field-input {
padding: 0 74px 0 88px;
font-size: 14px
}

.g-is-focused input.g-text-field-input {
padding-top: 20px;
padding-left: 88px
}

.item-applicant.g-text-field .g-text-field-floating-label {
line-height: 40px
}

.item-applicant.g-text-field .g-text-box {
padding-left: 0;
height: 40px
}

.item-applicant.g-text-field input.g-text-field-input {
padding-left: 0;
height: 40px
}

.item-applicant.g-is-focused input.g-text-field-input {
padding-left: 0
}

@media screen and (max-width: 350px) {
.date_box {
padding: 8px 4px;
min-width: 40px
}
}

.package_price .package_text {
display: inline;
vertical-align: 2px
}

.booking-list #sel_gender.g-error.g-choose-flag .item-label, .booking-list .g-error.g-choose-flag .choose-time, .booking-list .g-error.gocalendar .item-label, .booking-list .g-error.roe .item-label, .booking-list .item-main.g-error.g-choose-flag .item-label {
left: 30px
}

.g-error.g-choose-flag.gocalendar .g-error-tip, .item-main.g-error.g-choose-flag .g-error-tip {
top: 47px
}

.g-error.g-choose-flag.gocalendar .g-error-tip {
width: auto;
box-sizing: content-box;
-webkit-box-sizing: content-box;
-moz-box-sizing: content-box;
-ms-box-sizing: content-box;
bottom: 16px;
left: 0;
top: auto;
bottom: -40px;
line-height: 25px;
padding: 5px 15px
}

.g-error.g-choose-flag.gocalendar .g-error-tip:before {
content: '';
position: absolute;
left: 6px;
top: -6px;
width: 10px;
height: 10px;
transform: rotate(90deg);
-webkit-transform: rotate(90deg);
background-position: 0 -139px;
background-image: url(//pages.c-ctrip.com/ticket/online/ticket_order.png?20191205173808);
background-repeat: no-repeat
}

.g-error.g-choose-flag .g-error-tip {
width: 90%;
left: 12px;
top: 32px;
font-size: 13px
}

.g-choose-cal-flag.g-error .g-error-tip {
margin-left: 12px;
top: 42px;
font-size: 13px
}

.g-input-flag.g-error .g-error-tip {
margin-left: -12px;
padding-left: 12px
}

.c-ticket-booking-passenger.g-input-flag.g-error .g-error-tip {
margin-left: 0;
width: auto
}

.booking-list .g-error .item-echo-text {
background: 0 0
}

.js-booking-mod-passenger .g-error.g-choose-flag.roe .g-error-tip {
position: absolute;
top: 31px
}

#ticket-booking-coupon .g-error.g-choose-flag .item-default-text, .booking-mod .g-error.g-choose-flag .title, .g-error .item-con--h {
padding-left: 12px
}

.booking-container .vouchers_box {
padding-bottom: 0
}

.booking-container .ticket-booking-notice {
margin: -10px -6px 10px
}

.booking-list .list-item-tip {
margin: -1px 0 0 30px;
position: relative;
background-color: #fff;
padding: 0 12px 10px 0;
font-size: 13px;
color: #ff2f39;
clear: both;
border-top: 0
}

.booking-list .list-item-tip .f-info {
position: absolute;
height: 100%;
left: 0;
top: 50%;
transform: translateY(-50%);
-webkit-transform: translateY(-50%);
margin-top: -1px
}

.booking-list .list-item-tip .f-info3 {
margin-top: 0
}

.list-item-tip .f-info + ul {
padding-left: 17px
}

.info-tip-item {
display: inline-block;
margin-right: 10px
}

.info-tip-item .f-radiobox {
color: #19a0f0;
position: relative;
top: 2px;
margin-right: 6px
}

.mod-no-delete {
padding-right: 0 !important
}

.booking-mod .mod-hd .label-new {
margin-top: 3px;
font-size: 12px;
color: #666
}

.booking-mod .mod-hd .label-new li {
float: left;
position: relative;
margin-right: 18px;
padding-left: 20px;
line-height: 20px
}

.booking-mod .mod-hd .f-radiobox3 {
position: absolute;
height: 100%;
left: 0;
top: 50%;
transform: translateY(-50%);
-webkit-transform: translateY(-50%);
margin-top: -1px;
color: #19a0f0
}

.booking-mod .mod-only-note .label-new {
margin-top: 0
}

.linked-more {
position: absolute;
top: 50%;
right: 40px;
margin: -9px 0 0 8px;
padding: 0 6px;
height: 19px;
line-height: 18px;
text-align: center;
color: #666;
border: #666 solid 1px;
border-radius: 10px
}

.linked-more .f-chevron-right {
display: none
}

.booking-mod .mod-hd {
position: relative;
padding: 10px 30px;
background: #eff0f2
}

.mod-only-note .notes-to-buy {
right: 12px
}

.booking-mod .mod-hd.booking-info-wrap {
padding-right: 12px
}

.tag-wrap {
font-size: 0;
padding-top: 6px
}

.tag-wrap .tag-item {
display: inline-block;
font-size: 14px;
margin-right: 20px
}

.tag-wrap .tag-item .f-radiobox {
color: #71c13d;
vertical-align: middle;
margin-right: 3px
}

.booking-info-tab .cui-tab-mod {
background: #fff
}

.booking-info-content {
position: relative;
overflow: hidden
}

.booking-info-content .show-more {
position: absolute;
right: 0;
bottom: 2px;
width: 50px;
height: 24px;
padding-left: 20px;
line-height: 24px;
background: #fff;
background: -webkit-gradient(linear, left center, 30% center, from(rgba(255, 255, 255, 0)), to(white));
background: linear-gradient(to right, rgba(255, 255, 255, 0), #fff 30%);
text-align: center
}

.booking-info-content .content-box {
max-height: 84px;
padding: 0 12px;
margin: 6px 0;
box-sizing: border-box;
overflow: hidden
}

.booking-info-footer {
position: relative;
padding: 5px 0 5px 12px;
font-size: 14px
}

.booking-info-footer .f-chevron-right, .coupon-list .f-radiobox2, .coupon-list .f-radiocircle, .coupon-side, .insurance-list .f-radiobox2, .insurance-list .f-radiocircle {
position: absolute;
right: 12px;
top: 50%;
transform: translateY(-50%);
-webkit-transform: translateY(-50%);
font-size: 12px;
color: #19a0f0
}

.coupon-list .item-text {
left: 20px;
margin-right: 28px
}

.coupon-list .f-radiobox2, .coupon-list .f-radiocircle, .insurance-list .f-radiobox2, .insurance-list .f-radiocircle {
font-size: 20px;
color: #c1c1c1
}

.coupon-list .f-radiobox2, .insurance-list .f-radiobox2 {
color: #19a0f0
}

.coupon-list .f-tkt-mbs, .coupon-list .f-tkt-minus, .coupon-list .f-tkt-present, .coupon-list .f-tkt-restitution, .coupon-list .tkt-mbs {
position: absolute;
left: 0;
top: 17px;
font-size: 18px;
line-height: 22px;
color: #ff7d13
}

.coupon-list .f-tkt-present {
color: #ff8fd4
}

.coupon-list .tkt-mbs {
border: 1px solid #ff7d13;
font-size: 14px;
line-height: 14px;
padding: 0 5px;
border-radius: 3px
}

.item_text {
color: #000;
padding: 15px 12px;
margin-right: 30px
}

.item_text.with-btn {
margin-right: 55px;
padding-top: 20px;
padding-bottom: 20px
}

.item_text.chevron-right {
padding: 18px 12px;
margin-right: 12px;
display: -webkit-box;
display: -ms-flexbox;
display: -webkit-flex;
display: flex;
-webkit-box-pack: justify;
-webkit-justify-content: space-between;
-ms-flex-pack: justify;
justify-content: space-between;
-webkit-box-align: center;
-webkit-align-items: center;
-ms-flex-align: center;
align-items: center
}

.coupon-list .coupon-status {
font-size: 14px;
color: #999;
line-height: 22px
}

.coupon-list .color_blove {
line-height: 22px
}

.coupon-list > .g-choose-flag.g-error .g-error-tip {
width: initial;
position: relative;
left: 0;
top: -7px;
display: inline-block;
padding: 5px 15px;
box-sizing: initial
}

.coupon-list > .g-choose-flag.g-error .g-error-tip:before {
content: '';
position: absolute;
left: 5px;
top: -6px;
width: 10px;
height: 10px;
transform: rotate(90deg);
-webkit-transform: rotate(90deg);
background-position: 0 -139px;
background-image: url(//pages.c-ctrip.com/ticket/online/ticket_order.png);
background-repeat: no-repeat
}

.booking-container .item-text div {
max-height: 16px;
line-height: 16px;
font-size: 13px;
text-overflow: ellipsis;
white-space: nowrap;
overflow: hidden
}

.coupon-ticket {
position: absolute;
top: 50%;
margin-top: -9px;
padding: 0 4px;
height: 17px;
line-height: 17px;
vertical-align: 1px;
background: #fe587b;
font-size: 12px;
color: #fff
}

.coupon-ticket:after, .coupon-ticket:before {
content: '';
position: absolute;
top: 0;
left: 0;
width: 1px;
height: 100%;
background: url(https://pages.c-ctrip.com/ticket/h5/bg_coupon_border_left.png?20191205173808) repeat-y;
background-size: 1px auto
}

.coupon-ticket:after {
left: auto;
right: 0;
background: url(https://pages.c-ctrip.com/ticket/h5/bg_coupon_border_right.png?20191205173808) repeat-y;
background-size: 1px auto
}

.coupon-text {
display: inline-block;
font-size: 14px;
line-height: 15px
}

.coupon-text.disabled {
margin-left: -24px;
color: #999
}

.coupon-ellipsis .coupon-text {
padding-left: 30px
}

.coupon-side {
height: 50px;
line-height: 50px;
text-align: center
}

.coupon-btn {
display: inline-block;
width: 40px;
height: 20px;
line-height: 20px;
border: 1px solid #19a0f0;
border-radius: 3px;
color: #19a0f0;
font-size: 12px;
cursor: pointer
}

.coupon-list .isvalue .item-text {
right: 30px
}

.bg_white {
background-color: #fff
}

.booking-info-normal {
padding: 5px 12px 5px
}

.booking-info-maxheight {
max-height: 88px;
line-height: 21px;
padding-bottom: 0;
margin-bottom: 5px
}

.booking-info-normal .show-more-dispaly {
display: block !important
}

.g-error-reset {
height: 80px;
margin-right: -30px
}

.g-error-reset .item-text {
padding-right: 35px
}

.g-error-reset .g-error-tip {
top: 62px !important
}

.address-contant {
padding: 5px 25px 5px 0
}

.address-tip {
padding-left: 0 !important;
top: 0
}

.g-is-focused .address-tip {
display: none
}

.booking-list .item-animate-text {
width: 100%;
height: 45px;
padding: 12px 10px 0 88px;
box-sizing: border-box;
margin-top: -47px;
vertical-align: top;
position: absolute;
background: 0 0;
font-size: 14px;
line-height: 18px
}

@media screen and (max-width: 320px) {
.receipt-table-title {
width: 81px
}
}

@media screen and (min-width: 321px) {
.receipt-table-title {
width: 88px
}
}

@media screen and (max-width: 320px) {
.booking-list .item-animate-text {
padding-left: 80px
}
}

.address-info .g-text-field-floating-label {
line-height: 69px
}

.g-is-focused .address-float-lable {
display: none
}

.receipt-list .tkt_hairline_t {
border-bottom-width: 1px
}

.receipt-list li:last-child .tkt_hairline_t {
border-bottom-width: 0
}

.receipt-table {
min-height: 50px;
word-break: break-all
}

.pop-disable .f-checkbox, .pop-disable .f-checkcircle, .pop-disable .f-radiobox, .pop-disable .f-radiocircle, .pop-disable .item_info {
color: #ccc
}

.hintbox-line-reset {
line-height: 20px;
font-weight: 600
}

.rules_list {
margin: 10px 15px 0;
font-size: 14px;
line-height: 22px;
word-break: break-all
}

.pop-layer-app {
top: 0 !important
}

.show-layer {
opacity: 1;
z-index: 10
}

.blur {
-webkit-filter: blur(3px)
}

.pop-layer-body {
overflow-y: auto;
height: 100%;
box-sizing: border-box;
background: rgba(0, 0, 0, .8)
}

.pop-layer-body.pay {
padding-bottom: 60px
}

.pop-layer-box {
height: 100%
}

.layer_box {
position: absolute;
top: 0;
width: 100%;
box-sizing: border-box;
padding-top: 35px;
z-index: 98;
color: #fff;
-moz-opacity: .86;
opacity: .86;
height: 100%;
overflow-y: auto
}

.layer-tit {
font-size: 18px;
padding-left: 15px;
line-height: 15px;
color: #5cbce6
}

.layer-text-bar {
font-size: 14px;
margin-top: 15px;
padding-left: 15px;
padding-right: 15px
}

.layer-text-bar dfn {
margin-right: 7px
}

.layer-text-bar span {
display: block
}

.layer-text-bar + .layer-tit {
margin-top: 20px
}

.layer-text-bar + .layer-text-bar {
margin-top: 15px
}

.layer-oderdetail-body {
border: 1px solid #ccc;
height: auto;
padding-top: 0
}

.layer-oderdetail-body .orderdetail-title {
background: #eff0f2;
padding: 30px 15px 30px 0;
position: relative
}

.layer-oderdetail-body .layer-tit {
color: #000;
font-weight: 700;
line-height: initial
}

.layer-oderdetail-body .layer-tit .total-price {
color: #f40;
float: right
}

.layer-oderdetail-body .booking-paytip {
font-size: 13px;
line-height: 13px;
color: #ff7d13;
text-align: right;
font-weight: 400;
margin-top: 10px
}

.layer-oderdetail-body .charges_detail_list li {
margin: 0 15px;
padding: 20px 0;
font-size: 14px
}

.layer-oderdetail-body .charges_detail_list .detail-text-price i {
margin: 0 1px
}

.layer-oderdetail-body .layer-orderdetail-title {
padding-bottom: 10px;
font-weight: 700
}

.layer-oderdetail-body .layer-orderdetail-title .layer-title-txt {
color: #000
}

.layer-oderdetail-body .layer-orderdetail-title .detail-text-price {
font-size: 16px
}

.layer-oderdetail-body .layer-orderdetail-info {
padding-top: 10px;
color: #666
}

.layer-oderdetail-body .layer-orderdetail-info .detail-text-price {
top: 0;
-webkit-transform: none;
transform: none
}

.charges_detail_list li {
margin-left: 15px;
padding: 25px 0 12px 0;
font-size: 14px
}

.charges_item_position {
position: relative;
padding-right: 100px
}

.charges_item_position + .charges_item_position {
margin-top: 9px
}

.charges_detail_list .detail-text-price {
position: absolute;
top: 50%;
right: 0;
transform: translateY(-50%);
-webkit-transform: translateY(-50%);
height: 20px
}

.layer-order-totals {
float: right;
padding: 24px 15px 0 0
}

.layer-order-totals.layer-order-cashback {
padding-top: 13px
}

.layer-order-totals i, .layer-order-totals span {
font-size: 19px
}

.layer-order-cashback i, .layer-order-cashback span {
font-size: 14px
}

.charges_tip {
width: 100%;
clear: both
}

.layer-fc {
color: #ff7d13
}

.traveler-checked-already {
-webkit-box-orient: vertical;
-moz-box-orient: vertical;
-ms-flex-direction: column;
-webkit-flex-direction: column;
flex-direction: column;
-webkit-box-pack: center;
-webkit-justify-content: center;
-ms-flex-pack: center;
justify-content: center;
line-height: 20px;
height: auto !important;
min-height: 50px
}

.traveler-checked-already span {
display: inline-block;
word-break: break-all;
padding-right: 10px
}

.traveler-checked-already .grey {
padding-right: 0
}

.insurance-exp {
display: inline-block;
padding-left: 5px;
margin-right: 28px;
color: #19a0f0;
vertical-align: 2px;
cursor: pointer
}

.insurance-exp span {
display: block;
font-size: 12px;
line-height: 1;
padding: 2px 7px;
position: relative
}

.insurance-exp span:after {
content: '';
position: absolute;
top: 50%;
right: -10px;
width: 0;
height: 0;
border-top: 6px solid #19a0f0;
border-right: 6px solid transparent;
border-left: 6px solid transparent;
border-bottom: 6px solid transparent
}

.booking-list .insurance-item-wrap {
margin-left: 12px
}

.booking-list .insurance-item-wrap .item-con {
margin-left: 0;
position: relative
}

.booking-list li:last-child .insurance-item-wrap:before {
border-top-width: 0
}

.booking-list .elastic-box-y {
margin-left: 0
}

.booking-list .the-echo-title {
border-top: 1px solid #eff0f2;
margin-top: -1px;
padding-top: 10px
}

.item-con-block .item-con-list .item-con-bar:last-child .tkt_hairline_b:after {
border-top-width: 0
}

.item-con-block .item-con-list .item-con-bar .item-con-bar-cont {
min-height: 50px;
margin-left: 10px;
padding: 3px 0
}

.item-con-block .item-con-list .item-con-bar .item-default-text {
padding: 0 15px 0 0
}

.item-con-block .item-con-list .item-con-bar .item-text {
display: block;
word-break: break-all
}

.item-con-block .f-chevron-right {
position: static;
padding-right: 10px;
padding-left: 3px;
transform: translateY(0);
-webkit-transform: translateY(0)
}

.item-default-text.ttd-color-blue {
color: #19a0f0
}

.g-error.g-choose-flag.g-error-adaptable .g-error-tip {
position: static
}

.time-zone-tip .item-main.g-error {
height: 76px
}

.time-zone-tip .item-main.g-error .item-label {
top: 46%
}

.time-zone-tip .g-error-tip {
top: 55px !important
}

.time-zone-tip.g-error {
height: 76px
}

.time-zone-tip.g-error .item-label {
top: 46%
}

.istip .read-more {
color: #049cdd;
padding-left: 32px
}

.istip .read-more .f-chevron-right {
vertical-align: -2px
}

.week-fixed {
position: fixed;
top: 44px
}

.booking-list-item {
margin-left: 30px;
padding-right: 30px;
align-items: center;
min-height: 50px;
font-size: 14px;
font-weight: 700
}

.booking-list-item label {
width: 150px
}

.booking-list-item div {
text-align: justify
}

.booking-md-around {
border-radius: 5px;
background-color: #fff;
position: relative
}

.booking-md-around:first-child .g-error {
border-radius: 5px 5px 0 0
}

.booking-md-around .booking-multi-tip {
padding: 5px 15px;
background-color: #fff7e0;
font-size: 12px;
color: #481a03;
width: 100%;
box-sizing: border-box;
-webkit-box-sizing: border-box
}

.booking-multi-box {
padding: 20px 30px
}

.booking-multi-box .booking-multi-item {
justify-content: space-between;
align-items: center
}

.booking-multi-box h3 {
font-size: 16px;
color: #333;
font-weight: 700
}

.booking-multi-box .booking-multi-right {
width: 105px
}

.booking-multi-box .booking-multi-left p {
line-height: 20px
}

.booking-multi-box .label-new {
margin-top: 3px;
font-size: 12px;
color: #666;
height: 20px;
overflow: hidden
}

.booking-multi-box .label-new li {
float: left;
margin-right: 14px;
line-height: 20px
}

.booking-multi-box .label-new [class*=f-] {
vertical-align: -2px;
margin-right: 2px
}

.booking-multi-box .label-new .f-radiobox3 {
color: #666
}

.booking-multi-box .booking-multi-buy {
font-size: 12px;
color: #19a0f0;
display: inline-block;
position: relative;
cursor: pointer;
margin-left: 5px
}

.booking-multi-box .booking-multi-buy:after {
content: '';
position: absolute;
top: 50%;
right: -15px;
width: 0;
height: 0;
border-top: 6px solid #19a0f0;
border-right: 6px solid transparent;
border-left: 6px solid transparent;
border-bottom: 6px solid transparent
}

.booking-multi-box .booking-multi-limited {
font-size: 12px;
color: #999
}

.booking-multi-box .ticket_tag_price {
text-align: right
}

.booking-multi-box .ticket_tag_price i {
font-size: 21px
}

.booking-multi-box .ticket_tag_price .booking-price-set {
margin-left: 4px;
font-size: 12px;
color: #999
}

.booking-multi-box .ticket_buy_num {
margin-top: 5px
}

.booking-multi-box .booking-item-tip {
font-size: 13px;
line-height: 21px;
color: #ff2f39
}

.booking-multi-box .booking-item-tip span {
vertical-align: -2px;
margin-right: 5px
}

.booking-multi-box .booking-multi-seedbox {
border-radius: 2px;
margin-top: 10px
}

.booking-multi-box .booking-multi-seedbox + .booking-item-tip {
margin-top: 5px
}

.booking-multi-box .booking-multi-section {
min-height: 50px;
align-items: center;
position: relative
}

.booking-multi-box .booking-multi-section label {
width: 84px;
text-align: right;
font-size: 14px
}

.booking-multi-box .booking-multi-section p {
font-size: 13px;
color: #999;
padding-right: 25px
}

.booking-multi-box .booking-multi-section p.echo_info {
font-size: 14px;
color: #000
}

.booking-multi-box .booking-multi-section .f-chevron-right {
color: #ccc;
position: absolute;
right: 10px
}

.booking-multi-box .booking-multi-section input[type=text] {
border: 1px solid #ccc;
padding: 10px;
width: 300px;
font-size: 14px
}

.booking-multi-box.g-error .booking-multi-seedbox {
background-color: #fff7e0
}

.booking-multi-box.g-error .ttd-color-deepgray {
color: red
}

.ticket_tag_price .discount_price {
font-size: 11px;
color: #666
}

.booking-multi-more {
height: 42px;
line-height: 42px;
text-align: center;
color: #19a0f0;
font-size: 13px
}

.booking-multi-more [class^=f-] {
position: relative;
left: 0;
top: 1px;
font-size: 12px;
margin-left: 4px
}

.booking-multi-person {
padding: 15px 15px 0 0;
text-align: justify
}

.booking-multi-select {
position: relative;
padding: 9px 0;
align-items: center
}

.booking-multi-select .booking-multi-info {
font-size: 13px;
color: #999
}

.booking-multi-select .booking-multi-info p {
color: #000;
line-height: 16px
}

.booking-multi-default {
font-size: 13px;
color: #999
}

.g-error .booking-multi-default {
color: red
}

.g-error-multi {
padding-left: 12px
}

.booking-coupon-rule {
font-size: 13px;
color: #b7904b;
line-height: 25px
}

.coupon-li-disable {
color: #999
}

.coupon-li-disable .item-label {
color: #999
}

.choose_traveler {
padding-bottom: 10px
}

.choose_traveler .item-date {
width: calc(100%);
width: calc(100% - 12px);
width: -webkit-calc(100% - 12px);
width: -moz-calc(100% - 12px);
margin-right: 12px;
padding-bottom: 0;
float: none;
position: relative
}

.choose_traveler .date_box {
width: 13%;
width: calc(14% - 4px);
width: -webkit-calc(14% - 4px);
width: -moz-calc(14% - 4px);
padding: 7px;
box-sizing: border-box;
-webkit-box-sizing: border-box;
margin-bottom: 10px
}

.choose_traveler .date_box .date {
color: #3d3d3d
}

.choose_traveler .date_box:last-child {
min-width: initial;
height: initial;
padding: 7px 4px 7px 7px;
margin-right: 0
}

.choose_traveler .date_box:last-child .date {
white-space: pre
}

.choose_traveler .date_box.cur .date {
color: #19a0f0
}

.person-add-box {
height: 100%;
box-sizing: border-box;
-webkit-box-sizing: border-box
}

.person-add-content {
max-height: calc(100% - 60px);
padding: 20px 0;
background-color: #fff;
box-sizing: border-box;
-webkit-box-sizing: border-box;
overflow-y: auto
}

.person-add-content .btn-box {
text-align: left;
padding-left: 150px
}

.person-add-content .mod-bd {
border-radius: 5px
}

.person-add-content .item-label {
text-align: right
}

.complete-btn {
width: 130px;
line-height: 44px;
font-size: 18px;
color: #fff;
letter-spacing: 1px;
border-radius: 5px;
background: #ff9a14;
cursor: pointer
}

.cancel-btn {
width: 130px;
line-height: 44px;
font-size: 18px;
color: #000;
letter-spacing: 1px;
border-radius: 5px;
background: #eee;
margin-left: 15px;
cursor: pointer
}

.traveler-mod {
width: 73%;
margin: 20px auto 10px
}

.traveler-mod:before {
border: 1px solid #19a0f0;
border-radius: 5px;
padding-left: 1px
}

.add-traveler {
position: relative;
height: 38px;
line-height: 38px;
text-align: center
}

.add-traveler .icon-add {
position: absolute;
top: 50%;
margin-top: -9px;
display: inline-block;
margin-right: 8px;
width: 30px;
height: 30px;
line-height: 30px;
border-radius: 50%;
border: 1px solid #19a0f0
}

.add-traveler .f-plus-thin {
font-size: 20px;
line-height: 30px;
color: #19a0f0
}

.add-traveler em {
font-size: 16px;
color: #19a0f0;
margin-left: 22px
}

.traveler_list .g-name-box {
color: #000;
font-size: 16px
}

.traveler_list .g-info-box-item {
color: #999;
font-size: 14px;
word-break: break-all
}

.traveler_list .g-info-box-item.blue {
font-size: 13px;
color: #19a0f0
}

.traveler_list .g-info-box-item.red {
font-size: 13px;
color: #ff2f39
}

.g-traveler-list-item {
padding: 11px 45px 11px 0;
position: relative
}

.oversea_phone .label-text {
margin-right: 10px
}

.oversea_phone .item-label {
width: 118px
}

.oversea_phone .item-label:after {
height: 30px;
top: 50%;
-webkit-transform: translate(0, -50%);
transform: translate(0, -50%)
}

.oversea_phone .g-text-box, .oversea_phone input.g-text-field-input {
padding-left: 130px
}

.oversea_phone .g-text-field-floating-label {
left: 130px
}

.ticket_traveler_box {
position: relative;
padding: 0 30px
}

.ticket_traveler_box .ticket_label {
width: 75px;
color: #000
}

.ticket_traveler_box .f-edit.edit_item {
font-size: 14px;
cursor: pointer
}

.ticket_traveler_box .f-edit.edit_item:before {
content: ''
}

.ticket_label {
line-height: 18px;
position: absolute;
top: 50%;
-webkit-transform: translateY(-50%);
transform: translateY(-50%);
width: 88px;
left: 0;
font-size: 14px;
color: #666
}

.ticket_traveler {
position: relative
}

.ticket_traveler:nth-of-type(1):before {
border-top-width: 0
}

.ticket_traveler .f-edit.edit_item {
right: 14px
}

.vertical-box {
min-height: 26px;
line-height: 16px;
margin-right: 42px;
margin-left: 75px;
padding: 12px 0;
width: 300px;
-webkit-box-pack: center;
-ms-flex-pack: center;
-webkit-justify-content: center;
justify-content: center;
border: 1px solid #ccc;
padding: 10px
}

.vertical-item {
display: inline-block;
vertical-align: middle;
width: 100%;
font-size: 14px;
color: #333;
text-overflow: ellipsis;
white-space: nowrap;
overflow: hidden
}

.performance_mod {
overflow: hidden
}

.performance_mod .booking-mod {
margin-top: 10px
}

.performance_mod .mod-hd {
padding: 10px 15px;
border-radius: 0
}

.performance_mod .mod-hd .label-new {
margin-top: 0;
font-size: 14px;
color: #333
}

.performance_mod .mod-hd .label-new li {
line-height: 24px
}

.performance_mod .label_box {
background: #fff
}

.btn_consult {
width: 60px;
text-align: center;
color: #666;
font-size: 10px;
padding: 0;
margin: 8px 0;
line-height: 15px
}

.btn_consult:before {
height: 35px;
top: 50%;
-webkit-transform: translate(0, -50%);
transform: translate(0, -50%)
}

.btn_consult .f-consult {
margin-bottom: 8px;
font-size: 20px;
color: #19a0f0
}

.tkt-booking-detail {
width: 1180px;
margin: 0 auto;
padding: 10px 10px 80px;
position: relative
}

.tkt-booking-detail .ttd-bg-rat {
width: 780px
}

.tkt-booking-detail .cui-paybar {
width: 780px
}

.tkt-booking-detail .cui-paybar .booking-btn-pay {
width: 100%
}

.tkt-booking-detail .cui-text-center {
color: #000
}

.pay-summary .booking-payunit .booking-payprice {
color: #f40
}

.pay-summary .booking-paytip {
font-size: 13px;
line-height: 13px;
color: #ff7d13
}

.pay-summary .booking-payprice i {
font-size: 23px;
font-weight: 700
}

.pay-summary .booking-paytip span {
padding: 1px 2px;
color: #ff7d13;
border: 1px solid rgba(255, 154, 20, .5)
}

.booking-list .passenger-info.c-ticket-booking-passenger {
padding: 0 30px
}

.booking-list .passenger-info.c-ticket-booking-passenger .the-echo-list .item {
padding-left: 0
}

.booking-list .passenger-info.c-ticket-booking-passenger .the-echo-list .item .item-label {
width: 111px
}

.booking-list .passenger-info.c-ticket-booking-passenger .the-echo-list .item input.g-text-field-input {
margin-left: 111px
}

.booking-list .passenger-info.c-ticket-booking-passenger .the-echo-list .item .g-error-tip {
left: 450px
}

.icon-calendar {
background-image: url(//pages.c-ctrip.com/ticket/online/ticket_order.png?20191205173808);
background-position: 246px -17px;
width: 28px;
height: 28px;
border-left: 1px solid #ccc;
position: absolute;
right: 10px;
top: 50%;
border-left: 1px solid #ccc;
transform: translateY(-50%);
-webkit-transform: translateY(-50%);
cursor: pointer
}

.list-more {
position: absolute;
background: #fff;
z-index: 10;
border: 1px solid #ccc;
padding: 5px 0;
font-size: 14px;
text-align: center;
top: 38px;
left: 5px;
max-height: 100px;
overflow: auto
}

.list-more li {
cursor: pointer;
padding: 2px 10px
}

.list-more li.cur {
color: #19a0f0
}

.required {
color: #ff461b;
font-weight: bolder;
margin-right: 10px;
margin-left: 10px;
font-size: 14px
}

.edit_item {
cursor: pointer
}

.chevron-down {
position: relative;
cursor: pointer
}

.chevron-down:after {
position: absolute;
content: '';
top: 50%;
right: -15px;
width: 0;
height: 0;
border-top: 6px solid #666;
border-right: 6px solid transparent;
border-left: 6px solid transparent;
border-bottom: 6px solid transparent
}

.chevron-up {
position: relative;
cursor: pointer
}

.chevron-up:after {
position: absolute;
content: '';
top: 50%;
right: -15px;
width: 0;
height: 0;
transform: translateY(-50%);
-webkit-transform: translateY(-50%);
border-top: 6px solid transparent;
border-right: 6px solid transparent;
border-left: 6px solid transparent;
border-bottom: 6px solid #666
}

.insurance-list .item-label, .passenger-info .item-label {
text-align: right
}

.toast {
position: fixed;
padding: 10px 40px;
border-radius: 4px;
background: #fff7e0;
left: calc(50% - 190px);
top: -1px;
color: #000;
font-size: 16px;
width: auto;
box-sizing: border-box;
display: flex;
align-items: center;
-webkit-transform: translateX(-50%);
transform: translateX(-50%);
z-index: 99;
text-align: center;
box-shadow: 0 4px 12px rgba(0, 0, 0, .15);
-webkit-box-shadow: 0 4px 12px rgba(0, 0, 0, .15);
font-size: 14px
}

.toast .info {
background-image: url(//pages.c-ctrip.com/ticket/online/ticket_order.png?20191205173808);
background-position: 94px -129px;
width: 19px;
height: 19px;
margin-right: 5px
}

.single_logo.cui_hd {
width: 1180px;
margin: 0 auto;
height: 59px;
position: relative
}

.single_logo.cui_hd .ctrip_logo {
width: 126px;
padding-top: 8px;
padding-bottom: 8px
}

.single_logo.cui_hd .ctrip_logo a {
display: block;
width: 126px;
height: 43px;
text-indent: -999px;
background: url(//pic.c-ctrip.com/common/c_logo2013.png) no-repeat
}

.single_logo.cui_hd .cui_toolkit {
position: absolute;
right: 0;
top: 50%;
transform: translateY(-50%);
-webkit-transform: translateY(-50%);
width: 422px;
text-align: right;
color: #bbb
}

.single_logo.cui_hd .cui_toolkit .cui_kefu {
color: #4c4c4c;
margin-left: 8px;
text-decoration: none
}

.ticket-book-info .ticket-detail-info dl {
font-size: 12px
}

.g-calendar-box {
height: 100%
}

.g-calendar-body {
position: relative;
height: calc(100% - 67px);
overflow-y: auto;
-webkit-box-sizing: border-box;
box-sizing: border-box
}

.g-calendar-wrap {
position: relative;
background-color: #fff;
height: 100%
}

.g-calendar-wrap.istip {
padding-top: 60px
}

.single-month.istip .g-calendar-tip {
position: absolute;
top: 0;
z-index: 1
}

.g-calendar-static {
position: static !important
}

.font-blue {
color: #049cdd
}

.g-calendar-tip {
vertical-align: middle;
display: table-cell;
position: fixed;
top: 44px;
left: 0;
right: 0;
z-index: 10;
width: 100%;
height: 33px;
padding: 0 15px 0 15px;
box-sizing: border-box;
line-height: 33px;
overflow: hidden;
background-color: #fffcf3;
border-width: 0;
border-bottom-width: 1px;
-webkit-border-image: url(https://pages.c-ctrip.com/ticket/h5/bg_border_dark.png?20191205173808) 2 stretch;
border-image: url(https://pages.c-ctrip.com/ticket/h5/bg_border_dark.png?20191205173808) 2 stretch;
color: #481a03;
font-size: 12px
}

.g-calendar-tip .f-info {
position: absolute;
left: 15px;
top: 50%;
margin: -6px 5px 0 0;
line-height: 1;
vertical-align: -1px;
font-size: 13px
}

.g-calendar-tip .tip-text {
display: inline-block;
vertical-align: middle;
max-height: 28px;
line-height: 14px
}

.g-calendar-tip .tip-text a {
word-break: keep-all
}

.g-calendar-tip .f-info + .tip-text {
padding-left: 20px
}

.tkt_tip {
position: relative;
padding: 7px 15px;
background-color: #fff7e0;
font-size: 12px;
color: #481a03;
line-height: 18px;
text-align: left
}

.g-calendar-week {
line-height: 25px;
background-color: #fff;
overflow: hidden;
border-width: 0;
border-top-width: 1px;
border-bottom-width: 1px;
-webkit-border-image: url(https://pages.c-ctrip.com/ticket/h5/bg_border_dark.png?20191205173808) 2 stretch;
border-image: url(https://pages.c-ctrip.com/ticket/h5/bg_border_dark.png?20191205173808) 2 stretch
}

.single-month {
padding-top: 0
}

.single-month.istip {
padding-top: 33px
}

.g-calendar-week-item {
float: left;
width: 14.2%;
text-align: center;
color: #666;
font-size: 14px
}

.g-calendar-month {
line-height: 29px;
background-color: #f7f7f7;
text-align: center;
font-size: 13px;
color: #000
}

.g-calendar-wrap.single-month .g-calendar-month {
overflow: hidden
}

.g-calendar-nav {
cursor: pointer;
margin: 0 10px;
font-size: 14px
}

.g-calendar-month .btn-next, .g-calendar-month .btn-prev {
float: left;
height: 41px;
width: 50px;
line-height: 41px;
padding: 0 0 0 18px;
box-sizing: border-box;
text-align: left;
font-size: 12px
}

.g-calendar-month .btn-next {
float: right;
padding: 0 18px 0 0;
text-align: right
}

.g-calendar-month [class*=f-chevron] {
display: inline-block;
width: 20px;
height: 20px;
line-height: 20px;
border-radius: 2px;
background-color: #099fde;
color: #fff;
text-align: center
}

.g-calendar-month .disable [class*=f-chevron] {
background-color: #dbdbdb
}

.g-calendar-date {
position: relative;
overflow: hidden
}

.calendar_date_item, .g-calendar-date-item {
float: left;
width: calc(100% / 7);
height: 70px;
overflow: hidden;
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box;
position: relative;
text-align: center;
line-height: 16px;
font-size: 17px;
padding: 2px 0;
cursor: pointer
}

.g-calendar-date-item.disable {
color: #aaa;
cursor: default
}

.g-calendar-date-item.current {
background-color: #19a0f0
}

.g-calendar-date-item.current .iconfont, .g-calendar-date-item.current [class*=-info], .ttd-bg-gray [class*=-info] {
color: #fff !important
}

.disable .date-info .iconfont {
color: #aaa
}

.g-calendar-date-item .extra-info {
height: 18px;
line-height: 20px;
font-size: 11px;
color: #666
}

.g-calendar-date-item .date-info, .rdr-Day {
height: 18px;
line-height: 18px;
font-size: 17px;
position: relative
}

.g-calendar-date-item .date-alt {
font-size: 14px
}

.g-calendar-date-item .price-info {
color: red;
font-size: 10px;
height: 16px;
line-height: 16px
}

.cashback_box .price-info {
color: #999;
font-size: 10px
}

.num-tip .extra-info {
height: 11px;
overflow: hidden
}

.num-tip .date-info {
height: 18px
}

.num-tip .price-info {
height: 10px;
line-height: 10px;
margin-top: 2px
}

.num-info {
font-size: 10px;
height: 14px;
line-height: 14px;
color: red
}

.g-calendar-date-item .price-extra-info {
color: #999
}

.holiday-tag, .work-tag {
position: absolute;
top: 7px;
left: 50%;
width: 100%;
line-height: 12px;
font-size: 12px;
color: #333;
-webkit-transform: translateX(-50%);
-ms-transform: translateX(-50%);
-o-transform: translateX(-50%);
transform: translateX(-50%);
z-index: 1
}

.restitution-date .extra-info {
height: 0
}

.restitution-date .return-info {
color: red;
font-size: 9px
}

.calendar-bottom-title {
background-color: #fff;
font-size: 14px;
color: #999;
line-height: 34px;
text-align: center;
margin-bottom: 20px
}

.calendar-bottom-title span {
color: #999;
line-height: 34px;
text-align: center
}

.calendar-bottom-title span:before {
content: "";
display: inline-block;
width: 18px;
height: 1px;
background-color: #999;
vertical-align: 4px;
margin-right: 5px
}

.calendar-bottom-title span:after {
content: "";
display: inline-block;
width: 18px;
height: 1px;
background-color: #999;
vertical-align: 4px;
margin-left: 5px
}

.rdr-Calendar {
-webkit-border-image: url(https://pages.c-ctrip.com/ticket/h5/bg_border_light.png?20191205173808) 2 stretch;
border-image: url(https://pages.c-ctrip.com/ticket/h5/bg_border_light.png?20191205173808) 2 stretch;
border-width: 0;
border-style: solid;
border-top-width: 1px;
border-bottom-width: 1px
}

.choose-date.ttd-bg-rat {
min-height: 100vh
}

.choose-date .selected {
color: #fff;
background: #19a0f0
}

.choose-date .disabled {
color: #ccc;
background: #f9f9f9
}

.choose-date .month-box {
position: relative;
height: 40px;
line-height: 40px;
width: 100%
}

.choose-date .month-box ul {
background: #fff;
overflow: auto
}

.choose-date .month-box ul::-webkit-scrollbar {
display: none
}

.choose-date .month-box li {
width: 105px;
text-align: center;
font-size: 15px;
color: #666;
-webkit-flex-shrink: 0;
-ms-flex-negative: 0;
flex-shrink: 0
}

.choose-date .month-box .selected {
height: 38px;
color: #19a0f0;
background: #fff;
border-bottom: 2px solid #19a0f0
}

.choose-date .date-box {
background-color: #fff
}

.choose-date .time-box {
margin-top: 10px;
padding: 2px 15px 10px
}

.choose-date .time-box h5 {
padding-top: 7px;
height: 20px;
line-height: 20px;
font-size: 16px
}

.choose-date .time-box ul {
padding-top: 5px;
-webkit-flex-wrap: wrap;
-moz-flex-wrap: wrap;
-ms-flex-wrap: wrap;
-o-flex-wrap: wrap;
flex-wrap: wrap;
-webkit-justify-content: flex-start;
justify-content: flex-start
}

.choose-date .time-box li {
margin: 4px 0;
margin-right: 5%;
width: 30%;
height: 35px;
line-height: 35px;
text-align: center;
border: 1px solid #dbdbdb;
border-radius: 5px;
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box
}

.choose-date .time-box li:nth-child(3n+0) {
margin-right: 0
}

.choose-date .time-box .selected {
border-color: #19a0f0
}

.scroll_time_box {
margin-right: -15px;
background: #fff;
padding: 20px 15px 0;
margin-bottom: -15px
}

.scroll_time_box .item_box {
overflow: hidden;
overflow-x: auto;
padding-bottom: 35px
}

.scroll_time_box .date_box {
height: 80px
}

.scroll_time_box .tab_shadow:after {
height: 120%;
margin-top: -15px
}

.scroll_time_box .selec_shelter {
width: 53px;
height: 100px;
margin-top: -35px;
font-size: 12px;
color: #19a0f0;
background-color: #fff
}

.scroll_time_box .selec_shelter p {
width: 30px;
line-height: 16px
}

.scroll_time_box .selec_shelter i {
color: #ccc;
margin-left: -5px
}

.scroll_time_box .time_item {
margin-right: 10px;
padding: 10px 10px 8px;
width: 60px;
min-height: 80px;
font-size: 12px;
color: #666;
border-radius: 5px;
text-align: center
}

.scroll_time_box .time_item:before {
border-radius: 10px;
border: 1px solid #ccc
}

.scroll_time_box .time_item.cur {
background-color: #19a0f0
}

.scroll_time_box .time_item.cur p {
color: #fff
}

.scroll_time_box .time_item.disabled {
background-color: #eee
}

.scroll_time_box .time_item.disabled p {
color: #999
}

.scroll_time_box .resort_img_label {
min-width: 37px;
height: 16px;
line-height: 16px;
background-image: -webkit-gradient(linear, 100% 0, 0 100%, from(#ffb45a), to(#fe8d42));
background-image: linear-gradient(90deg, #ffb45a 0, #fe8d42 100%)
}

.perf_module.booking-mod {
margin: 0 6px 10px;
overflow: hidden;
-webkit-border-radius: 0 0 5px 5px;
border-radius: 0 0 5px 5px
}

.perf_module .mod-bd {
margin-right: -13px;
padding: 5px 15px 15px
}

.perf_module .item {
display: inline-block;
min-height: 18px;
line-height: 18px;
min-width: .35rem;
margin: 10px 11px 0 0;
padding: 8px 21px;
font-size: 14px;
border-radius: 5px;
color: #666;
text-align: center;
background-color: #fff;
word-break: break-all
}

.perf_module .item:before {
border: 1px solid #ccc;
border-radius: 10px;
margin-left: 1px
}

.perf_module .selected {
color: #fff;
background-color: #19a0f0
}

.perf_module .selected:before {
border-color: transparent
}

.perf_module .disabled {
color: #999;
background: #eee
}

.perf_module .disabled:before {
border-color: transparent
}

.perf_module .disabled h3 {
color: #999
}

.btn-next {
position: fixed;
bottom: 0;
left: 0;
width: 100%;
height: 50px;
line-height: 50px;
text-align: center;
font-size: 18px;
font-weight: 500;
color: #fff;
background: #ff7d13
}

.date_layer {
background: #efefef;
overflow-y: auto
}

.rdr-WeekDays {
background-color: #eee
}

.rdr-Days .price-info {
color: #666
}

.title-side-btn {
font-size: 13px;
color: #19a0f0;
line-height: 21px;
float: right;
margin-left: 5px;
-webkit-align-self: center;
align-self: center
}

.title-side-btn span {
display: inline-block;
line-height: 16px;
padding: 1px 6px;
margin-left: 5px;
border-radius: 12px;
border: 1px solid #099fde;
font-size: 12px;
background-color: #fff
}

.cm-num-adjust {
height: 33px;
color: #099fde;
background-color: #fff;
display: inline-block;
border-radius: 4px
}

.cm-num-adjust input.cm-adjust-view {
padding-top: 0 !important
}

.cm-num-adjust .cm-adjust-minus.disabled, .cm-num-adjust .cm-adjust-plus.disabled {
border-color: #dbdbdb !important
}

.cm-num-adjust .cm-adjust-minus.disabled::after, .cm-num-adjust .cm-adjust-minus.disabled::before, .cm-num-adjust .cm-adjust-plus.disabled::after, .cm-num-adjust .cm-adjust-plus.disabled::before {
background-color: #d9d9d9 !important
}

.cm-num-adjust .cm-adjust-minus, .cm-num-adjust .cm-adjust-plus, .cm-num-adjust .cm-adjust-view {
width: 33px;
height: 33px;
line-height: 31px;
text-align: center;
float: left;
-webkit-box-sizing: border-box;
box-sizing: border-box
}

.cm-num-adjust .cm-adjust-minus, .cm-num-adjust .cm-adjust-plus {
cursor: pointer;
border: 1px solid #099fde
}

.cm-num-adjust .cm-adjust-minus.disabled, .cm-num-adjust .cm-adjust-plus.disabled {
cursor: default !important;
background-color: #fff !important;
border-color: #ccc !important
}

.cm-num-adjust .cm-adjust-view.disabled {
border-color: #ccc !important;
color: #ccc !important
}

.cm-num-adjust .cm-adjust-minus.disabled::after, .cm-num-adjust .cm-adjust-minus.disabled::before, .cm-num-adjust .cm-adjust-plus.disabled::after, .cm-num-adjust .cm-adjust-plus.disabled::before {
background-color: #ccc !important
}

.cm-num-adjust .cm-adjust-minus:active, .cm-num-adjust .cm-adjust-plus:active {
background-color: #099fde
}

.cm-num-adjust .cm-adjust-minus:active::after, .cm-num-adjust .cm-adjust-minus:active::before, .cm-num-adjust .cm-adjust-plus:active::after, .cm-num-adjust .cm-adjust-plus:active::before {
background-color: #fff
}

.cm-num-adjust .cm-adjust-minus {
border-right: none;
border-radius: 4px 0 0 4px;
position: relative
}

.cm-num-adjust .cm-adjust-minus::before {
content: "";
height: 2px;
width: 16px;
background-color: #099fde;
position: absolute;
top: 50%;
left: 50%;
-webkit-transform: translate3d(-50%, -50%, 0);
transform: translate3d(-50%, -50%, 0)
}

.cm-num-adjust .cm-adjust-minus + .cm-adjust-plus {
border-left: 1px solid #099fde
}

.cm-num-adjust .cm-adjust-plus {
border-left: none;
border-radius: 0 4px 4px 0;
position: relative
}

.cm-num-adjust .cm-adjust-plus::after, .cm-num-adjust .cm-adjust-plus::before {
content: "";
width: 16px;
height: 2px;
background-color: #099fde;
position: absolute;
top: 50%;
left: 50%;
-webkit-transform: translate3d(-50%, -50%, 0);
transform: translate3d(-50%, -50%, 0)
}

.cm-num-adjust .cm-adjust-plus::after {
width: 2px;
height: 16px
}

.cm-num-adjust .cm-adjust-view {
border: 1px solid #099fde;
overflow: hidden
}

.cm-num-adjust input.cm-adjust-view {
background-color: #fff;
border-radius: 0;
line-height: normal;
padding-top: 5px;
width: 37px;
-webkit-appearance: none
}

.cm-num-adjust input.cm-adjust-view:focus {
outline: 0;
-webkit-box-shadow: none;
box-shadow: none
}

.ticket_tag_price {
font-size: 12px;
color: #f40
}

.g-error-tip {
display: none
}

.border-vertical-scale, .txt-scale {
display: inline-block;
width: 200%;
height: 200%;
-webkit-transform-origin: 0 0;
transform-origin: 0 0;
-webkit-box-sizing: content-box;
box-sizing: content-box;
transform: scale(.5, .5);
-webkit-transform: scale(.5, .5)
}

.cui-text-center, .ellips {
white-space: nowrap;
overflow: hidden;
text-overflow: ellipsis
}

.ticket-booking-notice {
padding: 15px 30px;
font-size: 13px;
line-height: 18px;
color: #666;
background: #fff7e1;
box-sizing: border-box;
-webkit-box-sizing: border-box
}

.ticket-booking-notice .f-info {
margin-right: 5px;
vertical-align: -1px
}

.ticket-booking-notice .f-info3 {
font-size: 13px;
margin-right: 4px
}

.g-text-field {
padding-left: 0 !important;
font-size: 14px;
line-height: 24px;
position: relative;
vertical-align: top
}

.g-text-field .g-text-field-floating-label {
position: absolute;
display: none;
top: 0;
left: 88px;
font-size: 13px;
line-height: 50px;
color: #a9a9a9;
opacity: 1;
-webkit-transform: scale(1);
transform: scale(1);
-webkit-transition: all 450ms cubic-bezier(.23, 1, .32, 1) 0s;
transition: all 450ms cubic-bezier(.23, 1, .32, 1) 0s;
-webkit-transform-origin: left top;
transform-origin: left top
}

.g-text-field .g-text-box {
width: 100%;
height: 50px;
padding-left: 75px;
box-sizing: border-box
}

.g-text-field input.g-text-field-input {
-webkit-transition: all 450ms cubic-bezier(.23, 1, .32, 1) 0s;
transition: all 450ms cubic-bezier(.23, 1, .32, 1) 0s;
position: absolute;
left: 0;
top: 0;
height: 50px;
box-sizing: border-box;
padding: 0 20px 0 75px;
border: none;
outline: 0;
text-overflow: ellipsis;
white-space: nowrap;
overflow: hidden
}

.g-input-flag.g-error .g-error-tip {
display: block;
width: auto;
line-height: 25px;
margin: 0 0 0 -15px;
padding-left: 15px;
font-size: 13px
}

.g-choose-flag.g-error .g-error-tip, .g-traveler-flag.g-error .g-error-tip {
display: block;
position: absolute;
top: 0
}

.g-choose-flag.g-error .g-error-tip {
box-sizing: border-box
}

.g-traveler-flag.g-error .g-error-tip {
width: 100%;
padding-left: 75px;
box-sizing: border-box;
font-size: 13px
}

.g-choose-flag.g-error .info-show, .g-choose-flag.g-error .ticket_holdfont, .g-traveler-flag.g-error .text_blue, .g-traveler-flag.g-error .ticket_holdfont {
display: none
}

.g-error-tip {
display: none;
width: auto;
border: 1px solid #ffb9a9;
background-color: #ffebe5;
height: 26px;
line-height: 26px;
font-size: 12px;
color: #ff461b
}

.list_st_border li:active .g-error-tip {
background: #f8f8f8
}

.g-pop-list-item {
position: relative;
padding-left: 25px
}

.g-pop-list-item:first-child:before {
border-top-width: 0
}

.g-pop-list-item .list-item, .pop_list_title .list-item {
word-break: break-all
}

.g-pop-list-item .checkbox2, .g-pop-list-item .checkcircle2, .g-pop-list-item .f-checkbox2, .g-pop-list-item .f-checkcircle2, .g-pop-list-item .f-radiobox, .g-pop-list-item .f-radiocircle, .g-pop-list-item .radiobox, .g-pop-list-item .radiocircle {
position: absolute;
top: 50%;
left: 0;
font-size: 18px;
color: #999;
-webkit-transform: translateY(-50%);
-moz-transform: translateY(-50%);
transform: translateY(-50%)
}

.ttd-mask {
position: fixed;
top: 0;
bottom: 0;
left: 0;
right: 0;
height: 100%;
width: 100%;
z-index: 99;
background: rgba(0, 0, 0, .5);
-webkit-transition: all .5s ease;
transition: all .5s ease;
will-change: opacity;
contain: strict
}

.ttd-layer-box {
position: absolute;
left: 50%;
top: 0;
transform: translateX(-50%);
-webkit-transform: translateX(-50%);
color: #000;
font-size: 15px;
overflow-y: hidden;
background: #fff;
margin: 0 auto;
height: 100%;
width: 100%;
border-radius: 5px
}

.ttd-layer-box .title-box {
position: relative;
width: 100%;
z-index: 99;
height: 60px;
font-size: 18px;
line-height: 40px;
border-bottom: 1px solid #ccc;
margin-top: -1px;
background: #eff0f2
}

.ttd-layer-box .title-box .cui-text-center {
padding: 10px 30px
}

.ttd-layer-box .content-box {
position: relative;
height: calc(100% - 90px);
padding-left: 30px;
padding-right: 30px;
padding-top: 10px;
overflow-y: auto;
-webkit-box-sizing: border-box;
box-sizing: border-box
}

.cui-text-center {
padding: 0 40px
}

.ttd-layer-box .title-box .back-btn, .ttd-layer-box .title-box .close-btn {
position: absolute;
top: 50%;
transform: translateY(-50%);
-webkit-transform: translateY(-50%);
color: #999;
right: 0;
width: 40px;
height: 40px;
cursor: pointer
}

.ttd-layer-box .title-box .back-btn {
left: 0
}

.coupon-wrapper.person-add-content {
padding: 0;
background-color: transparent
}

.couponnew_list .coupon_input .list_st_border_item {
padding: 15px 105px 15px 0;
line-height: 1.5
}

.couponnew_list .coupon_input input {
width: 100%;
height: 35px;
box-sizing: border-box;
padding: 10px 15px;
border: #bcbcbc solid 1px;
border-radius: 5px;
background-color: #fff !important
}

.couponnew_list .coupon_input .done {
border-color: #fdb44b
}

.couponnew_list .btn_coupon span, .couponnew_list .btn_coupon_1 span, .couponnew_list .btn_coupon_dis span {
position: absolute;
top: 50%;
left: 50%;
width: 42px;
margin: -9px 0 0 -21px;
text-align: center
}

.couponnew_list .coupon_list .coupon_item {
margin-bottom: 10px;
position: relative;
background-color: #fff;
border: 1px solid #ccc
}

.couponnew_list .coupon_list .coupon_content:after, .couponnew_list .coupon_list .coupon_content:before {
content: '';
display: block;
width: 7px;
height: 7px;
border: #efefef 2px solid;
border-radius: 50%;
background-color: #efefef;
position: absolute;
right: 86px;
bottom: -6px;
z-index: 1
}

.couponnew_list .coupon_list .coupon_content:before {
right: 86px;
top: -6px
}

.couponnew_list .coupon_list .coupon_content {
padding-right: 90px;
position: relative;
overflow: hidden
}

.couponnew_list .coupon_list .coupon_detail {
padding: 10px 15px;
position: relative;
z-index: 2;
font-size: 12px;
color: #7b7b7b;
border-top: 1px dashed #efefef;
background-color: #fff;
clear: both
}

.couponnew_list .coupon_list .coupon_detail h3 {
margin-bottom: 5px
}

.couponnew_list .coupon_list .coupon_info {
padding: 30px 10px 0 20px
}

.couponnew_list .coupon_list .coupon_info h3 {
font-size: 13px;
margin-bottom: 4px;
font-weight: 700
}

.couponnew_list .coupon_list .coupon_info .date_info {
color: #7b7b7b;
font-size: 11px;
min-height: 70px;
position: relative;
left: 90px;
padding-right: 90px
}

.couponnew_list .coupon_list .couboninfo .date_info h2 {
width: 100%;
overflow: hidden;
white-space: nowrap;
text-overflow: ellipsis;
font-size: 16px;
color: #000
}

.couponnew_list .coupon_info a {
display: block;
padding: 20px 0 10px 90px;
margin: -20px 0 -10px;
color: #0091d0;
text-align: center;
cursor: pointer
}

.couponnew_list .discount {
color: #fe587b
}

.couponnew_list .cashback .discount {
color: #ff7d13
}

.couponnew_list .coupon_info .price_info dfn {
font-size: 20px;
font-weight: 500;
top: 0
}

.couponnew_list .coupon_info .price_info .coupon_cat_rule {
color: #7b7b7b;
font-size: 13px
}

.couponnew_list .coupon_list .icon_arrow_default {
position: relative;
right: -2px;
display: inline-block;
width: 10px;
height: 10px
}

.couponnew_list .coupon_list .icon_arrow_down, .couponnew_list .coupon_list .icon_arrow_up {
position: relative;
right: -2px;
display: inline-block;
width: 10px;
height: 10px;
transition: -webkit-transform, -moz-transform, transform .5s;
-moz-transition: -webkit-transform, -moz-transform, transform .5s;
-webkit-transition: -webkit-transform, -moz-transform, transform .5s;
-o-transition: -webkit-transform, -moz-transform, transform .5s
}

.couponnew_list .coupon_list .coupon_info .date_info h2 {
font-size: 16px;
color: #000;
word-wrap: break-word;
word-break: break-all;
clear: both;
line-height: 20px;
margin-bottom: 10px;
padding-top: 5px
}

.couponnew_list .coupon_list .icon_arrow_animate {
-webkit-transform: rotateX(180deg);
-moz-transform: rotateX(180deg);
-ms-transform: rotateX(180deg);
-o-transform: rotateX(180deg);
transform: rotateX(180deg)
}

.couponnew_list .btn_coupon_1 {
position: absolute;
right: 10px;
top: 15px;
width: 68px;
height: 33px;
line-height: 18px;
border-radius: 5px;
background: #fff;
color: #099fde;
border: 1px solid #099fde;
cursor: pointer
}

.couponnew_list .btn_coupon_1.disabled {
color: #fff;
background-color: #ccc;
border-color: transparent;
cursor: not-allowed
}

.couponnew_list .no_coupon {
height: 44px;
line-height: 44px;
font-size: 15px;
text-align: center;
border: #099fde solid 1px;
border-radius: 5px;
background: #fff;
color: #099fde;
margin: 10px 100px;
cursor: pointer
}

.couponnew_list .coupon_content_selected .coupon_info {
border-left: #fdb44b solid 2px;
border-top: #fdb44b solid 2px;
border-bottom: #fdb44b solid 2px
}

.couponnew_list .coupon_list .coupon_content_selected:after, .couponnew_list .coupon_list .coupon_content_selected:before {
border: #fdb44b 2px solid;
background-color: #efefef
}

.couponnew_list .coupon_apply {
display: block;
width: 68px;
height: 33px;
border: 1px solid #099fde;
-webkit-border-radius: 3px;
border-radius: 3px;
text-align: center;
line-height: 33px;
color: #099fde;
cursor: pointer
}

.couponnew_list .coupon_choosen {
display: block;
width: 68px;
height: 33px;
border: 1px solid #099fde;
-webkit-border-radius: 3px;
border-radius: 3px;
text-align: center;
line-height: 33px;
background-color: #099fde;
color: #fff;
cursor: pointer
}

.couponnew_list .coupon_list .coupon_info .date_info p {
color: #999
}

@media screen and (max-device-width: 320px) {
.couponnew_list .coupon_list .coupon_info .date_info p {
font-size: 11px
}

.couponnew_list .coupon_info a {
margin-top: -26px
}

.order_btmn_item p {
font-size: 12px
}
}

.couponnew_list .coupon_detail .coupon_detail_cat li {
display: inline-block;
width: 50%;
height: 20px;
color: #666;
background-color: #fff;
float: left;
overflow: hidden;
margin-bottom: 1px;
line-height: 20px
}

.couponnew_list .coupon_detail .coupon_detail_cat span {
display: inline-block;
height: 20px;
width: 100%;
background-color: #f5f5f5;
overflow: hidden;
white-space: nowrap;
text-overflow: ellipsis;
position: relative;
left: -1px
}

.couponnew_list .coupon_detail_cat_info {
clear: both
}

.couponnew_list .coupon_detail .coupon_detail_promo_code {
margin-bottom: 5px;
padding-top: 10px;
display: block
}

.couponnew_list .coupon_detail:before {
content: '';
display: block;
width: 7px;
height: 7px;
border: #efefef 2px solid;
border-radius: 50%;
background-color: #efefef;
position: absolute;
right: 86px;
top: -5px;
z-index: 1
}

.couponnew_list .coupon_inapply {
display: inline-block;
width: 75px;
height: 35px;
font-size: 16px;
line-height: 35px;
color: #fff;
text-align: center;
border-radius: 4px;
background: #ccc
}

.btn_coupon_dis, .couponnew_list .btn_coupon {
height: 100%;
width: 90px;
line-height: 18px;
color: #099fde;
position: absolute;
right: 0;
top: 0
}

.couponnew_list .btn_coupon:before, .couponnew_list.btn_coupon_dis:before {
content: '';
display: block;
width: 0;
height: 100%;
background-color: transparent;
position: absolute;
left: -1px;
top: 0
}

.couponnew_list .btn_coupon {
background-color: #fff
}

.couponnew_list .btn_coupon:before {
border-left: 1px solid #efefef !important
}

.coupon_item .price_info {
position: absolute;
top: 50%;
width: 90px;
margin-top: -44px;
font-size: 29px;
font-weight: 500;
text-align: center;
white-space: nowrap;
color: #fe587b
}

.price_info .coupon_cat {
width: 40px;
height: 14px;
font-size: 11px;
margin: 15px auto 3px;
font-weight: 400;
text-align: center;
line-height: 16px;
border: 1px solid #fe587b;
border-radius: 3px
}

.cant_use .price_info {
color: #ffa800
}

.cant_use .price_info .coupon_cat {
border-color: #ffa800
}

.coupon_reason {
position: relative;
color: #666;
font-size: 13px;
padding: 10px;
border-top: 1px dashed #efefef
}

.coupon_reason:after {
content: '';
display: block;
width: 7px;
height: 7px;
border: #efefef 2px solid;
border-radius: 50%;
background-color: #efefef;
position: absolute;
right: 86px;
top: -5px;
z-index: 1
}

.coupon_detail + .coupon_reason:after {
display: none
}

.couponnew_list .btn_coupon {
-webkit-box-orient: vertical;
-ms-flex-direction: column;
-webkit-flex-direction: column;
flex-direction: column;
-webkit-box-pack: center;
-ms-flex-pack: center;
-webkit-justify-content: center;
justify-content: center;
-webkit-box-align: center;
-ms-flex-align: center;
-webkit-align-items: center;
align-items: center
}

.couponnew_list .btn_coupon .tip_login {
color: #999;
font-size: 12px;
padding-top: 7px
}

.coupon-background-img {
height: .5rem;
background: url(https://pages.c-ctrip.com/activity/app/coupon-img-iphone.jpg?20191205173808) 50% no-repeat;
background-size: cover;
position: relative
}

.coupon-background-txt {
max-width: 2.06rem;
width: 100%;
color: #ff3304;
font-size: .18rem;
line-height: .19rem;
font-weight: 700;
position: absolute;
top: 50%;
left: 19%;
-webkit-transform: translate(0, -50%);
transform: translate(0, -50%)
}

@media only screen and (min-width: 768px) {
.coupon-background-img {
height: .6rem;
background: url(https://pages.c-ctrip.com/activity/app/coupon-img-ipad.jpg?20191205173808) 50% no-repeat;
background-size: cover
}

.coupon-background-txt {
max-width: 2.7rem;
text-align: center;
font-size: .24rem;
line-height: .24rem;
left: 51%;
-webkit-transform: translate(-50%, -50%);
transform: translate(-50%, -50%)
}
}

.coupon-layer-box .g-time-title {
font-size: 18px;
font-weight: 400;
border: none;
-o-border-image: none;
border-image: none
}

.coupon-layer-box .g-time-title .f-close {
color: #999;
line-height: 14px;
padding: 16px 15px 15px 15px
}

.common-coupon-layer {
background-color: #fff;
overflow: auto
}

.common-coupon-layer .coupon_list {
overflow: visible;
padding: 20px 10px
}

.common-coupon-layer .coupon-discount {
font-size: 15px;
font-weight: 700
}

.common-coupon-layer .coupon_detail_more {
margin-top: -7px;
padding: 12px 7px 10px;
border: 1px solid #ffb1b1;
border-top: 2px dashed #ffa79b;
z-index: 1;
background-color: #fff7f7;
border-bottom-left-radius: 5px;
border-bottom-right-radius: 5px;
position: relative
}

.common-coupon-layer .coupon_detail_txt {
font-size: 13px;
line-height: 20px;
color: #666
}

.common-coupon-layer.couponnew_list .coupon_list .coupon_content {
background-color: #fff7f7;
overflow: hidden
}

.common-coupon-layer.couponnew_list .coupon_list .coupon_item {
overflow: visible;
margin-bottom: 0
}

.common-coupon-layer.couponnew_list .coupon_list .coupon_item.current .coupon_info {
border: 1px solid #ffb1b1;
border-radius: 5px
}

.common-coupon-layer.couponnew_list .coupon_list .coupon_item.current .coupon_content::after, .common-coupon-layer.couponnew_list .coupon_list .coupon_item.current .coupon_content::before {
background-color: #fff;
width: 10px;
height: 10px;
border-radius: 10px;
border: 1px solid #ffb1b1
}

.common-coupon-layer.couponnew_list .coupon_list .coupon_info .date_info {
padding: 9px 0 0 95px;
position: initial
}

.common-coupon-layer.couponnew_list .coupon_list .coupon_info .date_info h2 {
padding-top: 0;
color: #ff5850;
font-weight: 700
}

.common-coupon-layer.couponnew_list .coupon_list .icon_arrow_up::before {
border-bottom-color: #999
}

.common-coupon-layer.couponnew_list .coupon_list .icon_arrow_down::before {
border-top-color: #999
}

.common-coupon-layer.couponnew_list .coupon_cat {
background-color: #fff
}

.common-coupon-layer.couponnew_list .coupon_cat_unlimited_sale {
color: #ff5850
}

.common-coupon-layer.couponnew_list .coupon_cat_unlimited_sale .coupon_cat {
border-color: #ff5850;
border-radius: 2px;
font-size: 12px;
margin: 15px auto 0;
padding: 0 0 1px
}

.common-coupon-layer.couponnew_list .btn_coupon {
width: 93px;
background-color: #fff7f7;
border: 1px solid #ffb1b1;
border-left-width: 0;
border-radius: 5px;
-webkit-box-sizing: border-box;
box-sizing: border-box
}

.common-coupon-layer.couponnew_list .btn_coupon::before {
border-right: 2px dashed #ffa79b
}

.common-coupon-layer.couponnew_list .coupon_info {
padding: 8px 15px 10px 0
}

.common-coupon-layer.couponnew_list .coupon_info .price_info {
height: initial;
line-height: 1.5;
margin: -7px 0;
font-size: 36px;
width: 90px;
text-align: center;
position: absolute;
top: 50%;
-webkit-transform: translateY(-50%);
transform: translateY(-50%)
}

.common-coupon-layer.couponnew_list .coupon_info .coupon_ins {
font-size: 13px;
color: #999;
text-align: left;
padding: 20px 0 14px 95px
}

.common-coupon-layer.couponnew_list .coupon_apply {
width: 54px;
height: 30px;
line-height: 30px;
font-size: 16px;
left: 21px;
border: none;
border-radius: 5px;
color: #fff;
background-color: #ff5850;
margin: 0;
transform: translateY(-50%);
-webkit-transform: translateY(-50%)
}

.common-coupon-layer.couponnew_list .coupon_apply.get {
background-color: #fff7f7;
color: #ff5850
}

.ticket_preferential_list {
padding: 0 100px
}

.icon_arrow_down, .icon_arrow_up {
position: relative;
display: inline-block;
width: 10px;
height: 10px;
margin-left: 2px;
top: -2px
}

.icon_arrow_down:after, .icon_arrow_down:before, .icon_arrow_up:after, .icon_arrow_up:before {
content: '';
display: block;
position: absolute;
width: 0;
height: 0;
border: 5px solid transparent;
overflow: hidden
}

.icon_arrow_down:before {
top: 3px;
border-top-color: #999
}

.icon_arrow_down:after {
top: 2px;
border-top-color: #fff
}

.icon_arrow_up:before {
bottom: 3px;
border-bottom-color: #999
}

.icon_arrow_up:after {
bottom: 2px;
border-bottom-color: #fff
}

.ticket_language span {
float: left;
width: 23px;
height: 23px;
font-size: 15px;
line-height: 23px;
color: #999;
text-align: center
}

.ticket_language span:first-child {
border-right: #ccc solid 1px
}

.ticket_language span:first-child.cur, .ticket_language span:last-child.cur {
position: relative;
color: #099fde
}

.ticket_language_chinese, .ticket_language_chinese:before {
background: 0 0
}

.caption_city .f-tick, .g-pop-list-item .f-edit, .resort_title_tag, .ticket_traveler .f-edit, .traveler_list .f-checkbox2, .traveler_list .f-checkcircle2, .traveler_list .f-radiobox, .traveler_list .f-radiocircle {
position: absolute;
left: 18px;
top: 50%;
-webkit-transform: translateY(-50%);
-moz-transform: translateY(-50%);
transform: translateY(-50%)
}

.caption_city .f-tick, .g-pop-list-item .f-edit, .ticket_traveler .f-edit {
left: 15px;
font-size: 18px;
color: #999
}

.caption_city .f-tick, .g-pop-list-item .f-checkbox2, .g-pop-list-item .f-radiobox, .ticket_traveler .f-edit, .traveler_list .f-edit {
color: #19a0f0
}

.caption_city .f-tick, .ticket_traveler .f-edit, .traveler_list .f-edit {
left: initial;
right: 20px;
font-size: 18px
}

.g-pop-list-item .checkbox2, .g-pop-list-item .checkcircle2, .g-pop-list-item .radiobox, .g-pop-list-item .radiocircle {
width: 20px;
height: 20px;
background-image: url(//pages.c-ctrip.com/ticket/online/ticket_order.png?20191205173808);
background-position: 94px -107px;
cursor: pointer
}

.g-pop-list-item .radiobox {
background-position: 94px -107px
}

.g-pop-list-item .radiocircle {
background-position: 70px -107px
}

.g-pop-list-item .checkbox2 {
background-position: 94px -47px
}

.g-pop-list-item .checkcircle2 {
background-position: 70px -47px
}

.modal_open {
position: fixed;
width: 100%;
height: 100%;
overflow: hidden
}

.cui-layer {
position: fixed;
left: 50%;
top: 50%;
border-radius: 10px;
padding: 5px;
z-index: 3012;
-webkit-transform: translate(-50%, -50%);
-ms-transform: translate(-50%, -50%);
-o-transform: translate(-50%, -50%);
transform: translate(-50%, -50%)
}

.cui-pop-box {
background: #fff;
width: 280px;
margin: auto;
position: relative;
overflow: hidden;
border-radius: 3px;
z-index: 9999
}

.cui-pop-box .cui-hd {
height: 40px;
line-height: 40px;
font-size: 1.2em;
color: #fff;
background: #19a0f0;
padding: 0 10px;
position: relative
}

.cui-roller-btns {
display: -webkit-box;
display: -moz-box;
display: -ms-flexbox;
display: -webkit-flex;
display: flex;
width: 100%;
-webkit-box-flex: 1;
-moz-box-flex: 1;
-webkit-flex: 1;
-ms-flex: 1;
flex: 1;
background: #fff;
line-height: 18px;
text-align: center;
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box;
border-top: 1px solid #ccc
}

.cui-flexbd {
-webkit-box-flex: 1;
-moz-box-flex: 1;
-webkit-flex: 1;
-ms-flex: 1;
flex: 1
}

.cui-roller-btns .cui-flexbd {
padding: 12px 0;
color: #19a0f0;
cursor: pointer
}

.cui-roller-btns .cui-flexbd:first {
border-right: 1px solid #ccc
}

.cui-roller-btns a {
color: #19a0f0
}

.cui-roller-btns .cui-flexbd:active {
opacity: .75
}

.cui-roller-btns .cui-flexbd:first-child {
border-left-width: 0
}

.cui-error-title {
font-size: 18px;
padding-bottom: 5px
}

.cui-error-tips {
color: #000;
padding: 20px;
text-align: center
}

.radio-picker-layer {
width: 800px
}

.tag_bg_box.c-tag-box {
height: 20px;
display: inline-block
}

.tag_bg_box .aurantia_bg {
line-height: 15px;
padding: 2px 3px 1px
}

.tag_bg_box .blue_bg {
font-size: 12px
}

.tag_bg_box .f-info3 {
display: inline-block;
vertical-align: -2px;
font-size: 11px;
margin: 0 3px 0 1px
}

.tflex > div {
display: inline-block
}

.tflex > span {
display: inline-block
}

.tflex_column > div {
display: block !important
}

.tflex_column > span {
display: block !important
}

.tflex_row > div {
display: inline-block !important
}

.tflex_row > span {
display: inline-block !important
}

.tflex_row .ie9_tblock {
display: block !important
}

.select_city_container {
width: calc(100% - 60px);
height: 100%;
padding: 0 30px
}

.select_city_container .tab_button_container {
width: calc(158px * 2);
height: 40px;
margin: 33px auto 24px auto;
border: 1px solid var(--themecolor);
border-radius: 4px
}

.select_city_container .tab_button_container .button_item {
line-height: 40px;
display: inline-block;
text-align: center;
width: 50%;
height: 100%;
color: var(--themecolor);
font-size: 16px;
cursor: pointer
}

.select_city_container .tab_button_container .button_active {
background: var(--themecolor);
color: #fff
}

.select_city_container .tab_container {
width: 100%;
height: 38px;
border-bottom: 3px solid #efefef
}

.select_city_container .tab_container .tab_item {
display: inline-block;
vertical-align: top;
line-height: 1;
text-align: center;
width: 80px;
height: 100%;
margin: 0 20px;
font-size: 16px;
cursor: pointer
}

.select_city_container .tab_container .tab_item .tab_item_value {
display: inline-block;
vertical-align: middle;
margin: calc((38px - 16px) / 2) 0
}

.select_city_container .tab_container .active_item {
color: var(--themecolor);
position: relative
}

.select_city_container .tab_container .active_item .tab_item_line {
position: absolute;
left: 0;
bottom: -3px;
width: 100%;
height: 3px
}

.select_city_container .scroll_bar_hidden {
width: 100%;
height: calc(100% - 97px - 38px - 3px - 0px - 0px);
padding-bottom: 0;
overflow: hidden
}

.select_city_container .scroll_bar_hidden .render_city_container {
width: calc(100% + 0px);
height: calc(100% - 30px);
padding-top: 30px;
overflow-y: auto;
position: relative
}

.select_city_container .scroll_bar_hidden .render_city_container .city_char_row {
width: 100%;
min-height: 20px;
margin-bottom: 30px
}

.select_city_container .scroll_bar_hidden .render_city_container .city_char_row .city_first_char {
line-height: 1;
vertical-align: top;
display: inline-block;
text-align: center;
width: calc(50px + 28px);
font-size: 14px;
color: var(--themecolor)
}

.select_city_container .scroll_bar_hidden .render_city_container .city_char_row .city_item_container {
width: calc(100% - 50px - 28px);
display: inline-block;
text-align: left
}

.select_city_container .scroll_bar_hidden .render_city_container .city_char_row .city_item_container .city_button {
display: inline-block;
line-height: 1;
font-size: 14px;
color: #333;
width: calc(80px - 10px);
overflow: hidden;
text-overflow: ellipsis;
white-space: nowrap;
margin-bottom: 10px;
margin-right: 10px;
cursor: pointer
}

.select_city_container .scroll_bar_hidden .render_city_container .city_char_row .city_item_container .city_button:hover {
color: #0086f6
}

.center_layer {
position: fixed;
left: 50%;
top: 50%
}

.center_pop_box {
width: 96%;
margin: auto;
position: relative;
overflow: hidden;
background: #fff;
border-radius: 5px;
z-index: 9999
}

.center_pop_box .cui-hd {
height: 40px;
line-height: 40px;
text-align: center;
font-size: 18px;
color: #333;
background: #efefef;
position: relative
}

.cui-roller, .cui-roller-btns {
display: -webkit-box;
display: -moz-box;
display: -ms-flexbox;
display: -webkit-flex;
display: flex;
width: 100%
}

.cui-roller {
width: 100%;
overflow: hidden;
position: relative;
moz-user-select: -moz-none;
-moz-user-select: none;
-o-user-select: none;
-khtml-user-select: none;
-webkit-user-select: none;
-ms-user-select: none;
user-select: none
}

.cui-roller-bd {
-webkit-box-flex: 1;
-moz-box-flex: 1;
-webkit-flex: 1;
-ms-flex: 1;
flex: 1;
height: 220px
}

.cui-roller .ul-list {
height: 100%;
text-align: center;
font-size: 1.2em;
z-index: 2;
position: absolute;
width: 100%;
top: 0;
left: 0
}

.cui-roller .ul-list li.current {
font-size: 1.3255em;
color: #19a0f0
}

.cui-roller .ul-list li {
height: 44px;
line-height: 44px;
white-space: nowrap;
overflow: hidden;
text-overflow: ellipsis
}

.cui-mask-gray {
position: absolute;
z-index: 3;
top: 0;
left: 0;
width: 100%;
height: 100%;
pointer-events: none;
background: linear-gradient(#fff 0, rgba(245, 245, 245, 0) 52%, rgba(245, 245, 245, 0) 48%, #fff 100%);
background: -webkit-gradient(linear, left bottom, left top, from(#fff), color-stop(.52, rgba(245, 245, 245, 0)), color-stop(.48, rgba(245, 245, 245, 0)), to(#fff));
background: -webkit-linear-gradient(#fff 0, rgba(245, 245, 245, 0) 52%, rgba(245, 245, 245, 0) 48%, #fff 100%);
background: -moz-linear-gradient(#fff 0, rgba(245, 245, 245, 0) 52%, rgba(245, 245, 245, 0) 48%, #fff 100%)
}

.cui-lines {
width: 100%;
height: 44px;
position: absolute;
top: 50%;
left: 0;
margin-top: -23px
}

.cui-layer {
position: fixed;
left: 50%;
top: 50%;
border-radius: 10px;
padding: 5px;
z-index: 3012;
-webkit-transform: translate(-50%, -50%);
-ms-transform: translate(-50%, -50%);
-o-transform: translate(-50%, -50%);
transform: translate(-50%, -50%)
}

.cui-pop-box {
background: #fff;
width: 280px;
margin: auto;
position: relative;
overflow: hidden;
border-radius: 3px;
z-index: 9999
}

.cui-pop-box .cui-hd {
height: 40px;
line-height: 40px;
font-size: 1.2em;
color: #fff;
background: #19a0f0;
padding: 0 10px;
position: relative
}

.cui-roller-btns {
display: -webkit-box;
display: -moz-box;
display: -ms-flexbox;
display: -webkit-flex;
display: flex;
width: 100%;
-webkit-box-flex: 1;
-moz-box-flex: 1;
-webkit-flex: 1;
-ms-flex: 1;
flex: 1;
background: #fff;
line-height: 18px;
text-align: center;
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box
}

.cui-flexbd {
-webkit-box-flex: 1;
-moz-box-flex: 1;
-webkit-flex: 1;
-ms-flex: 1;
flex: 1
}

.cui-roller-btns .cui-flexbd {
padding: 12px 0;
color: #19a0f0
}

.cui-roller-btns a {
color: #19a0f0
}

.cui-roller-btns .cui-flexbd:active {
opacity: .75
}

.cui-roller-btns .cui-flexbd:first-child {
border-left-width: 0
}

.cui-error-title {
font-size: 18px;
padding-bottom: 5px
}

.cui-error-tips {
color: #000;
padding: 20px;
text-align: center
}

.ticket-insurance-type li {
padding-left: 15px;
background: #fff
}

.ticket-insurance-type .item-content {
position: relative;
padding: 14px 0;
height: 19px;
font-size: 13px
}

.ticket-insurance-type .name {
display: inline-block;
width: 58%
}

.ticket-insurance-type .price {
float: right;
margin: 3px 20% 0 5px;
font-size: 12px;
color: #333;
line-height: 1
}

.ticket-insurance-type .price span {
margin-right: 2px;
font-size: 16px;
color: #ff7d13
}

.ticket-insurance-type .f-chevron-down {
position: absolute;
right: 0;
top: 0;
padding: 14px 11px;
color: #989898;
-webkit-transition: all .5s ease 0s;
-moz-transition: all .5s ease 0s;
transition: all .5s ease 0s
}

.insurance_info_box {
color: #000;
padding-bottom: 10px
}

.f-chevron-animation {
-webkit-transform: rotate(-180deg);
-moz-transform: rotate(-180deg);
transform: rotate(-180deg)
}

.ticket-insurance-info {
position: relative;
margin-left: -15px;
padding: 0 15px;
background: #efefef
}

.ticket-insurance-info .insu-txt {
overflow-y: auto;
padding-top: 7px;
width: 100%;
box-sizing: border-box
}

.ticket-insurance-info h4 {
font-size: 15px;
color: #666;
padding-bottom: 8px
}

.ticket-insurance-info p {
font-size: 13px;
line-height: 1.7;
margin-bottom: 5px;
word-break: break-all
}

.ticket-insurance-info a {
text-decoration: underline
}

.ticket-insurance-info .select-box {
padding: 8px 0 8px 0;
text-align: right
}

.ticket-insurance-info .select-btn {
width: 100px;
height: 33px;
color: #fff;
font-size: 15px;
border-radius: 5px;
background: #ff7d13
}

.ticket-insurance-info .selected-btn {
position: relative;
text-align: left;
text-indent: 45px
}

.ticket-insurance-info .selected-btn:before {
content: "";
position: absolute;
top: 10px;
left: 22px;
width: 14px;
height: 6px;
border-left: #fff solid 2px;
border-bottom: #fff solid 2px;
-webkit-transform: rotate(-45deg);
transform: rotate(-45deg)
}

.ticket_layer_item .time_label {
font-size: 16px;
padding-bottom: 4px;
color: #19a0f0
}

.ticket_layer_item a {
color: #19a0f0
}

.layer-oderdetail-body .charges_detail_list .cashback_layer_box {
margin: 80px 10px 20px;
padding: 10px;
border-radius: 5px;
background-color: rgba(255, 255, 255, .1)
}

.layer-oderdetail-body .cashback_layer_box .layer-orderdetail-info {
margin-left: 0;
padding: 5px 0;
line-height: 18px
}

.layer-oderdetail-body .cashback_layer_box .layer-orderdetail-info.layer_cashback_title {
padding: 5px 0 10px;
margin-bottom: 5px;
border-bottom: 1px solid #666
}

.layer-oderdetail-body .cashback_layer_box .detail-text-price {
right: 0
}

.error_tip .ticket-booking-notice {
color: red;
background-color: #fffdf2
}

.couponnew_list .cashback {
color: #ff7d13
}

.couponnew_list .cashback .coupon_cat {
border: 1px solid #ff7d13;
border-radius: 3px
}

.couponnew_list .cashback .discount {
color: #ff7d13
}

.service-layer-box {
width: 2.9rem;
position: absolute;
left: 50%;
top: 50%;
transform: translate(-50%, -50%);
-webkit-transform: translate(-50%, -50%);
margin-top: -.2rem;
text-align: center;
color: #fff
}

.service-layer-box h3 {
font-size: .18rem;
margin-bottom: .08rem
}

.service-layer-box p {
font-size: .12rem;
line-height: .2rem;
white-space: nowrap;
margin-right: -.3rem
}

.service-layer-box .disabled .f-service-intertel, .service-layer-box .disabled .f-service-online, .service-layer-box .disabled .f-service-tel, .service-layer-box .disabled h3, .service-layer-box .disabled p {
color: #999
}

.service-layer-box .disabled .disable_txt {
display: inline-block
}

.service_title_tip {
font-size: .12rem;
line-height: .2rem
}

.service-layer-item {
width: 2.9rem;
min-height: 1rem;
margin-top: .2rem;
background-color: #fff;
border-radius: .08rem;
color: #999;
font-size: .12rem;
text-align: left;
overflow: hidden;
align-items: center;
-webkit-align-items: center
}

.service-layer-item h3 {
color: #000;
margin-bottom: 0
}

.service-layer-item .service-layer-icon {
width: .74rem;
text-align: center;
margin-right: -6px
}

.service-layer-item .service-layer-arr {
width: .4rem;
text-align: center
}

.service-layer-item .f-service-intertel, .service-layer-item .f-service-tel {
font-size: .5rem;
color: #0a0
}

.service-layer-item .f-service-online {
font-size: .5rem;
color: #009fde
}

.service-layer-item .f-arrow-light-right {
font-size: .2rem;
color: #ccc
}

.service-layer-close {
margin-top: .8rem
}

.f-service-close {
font-size: .4rem
}

.service_tel_content {
min-height: .9rem;
position: relative
}

.service_tel_content h3 {
white-space: nowrap;
margin-right: -.3rem
}

.service_tel_content:before {
content: '';
border-color: #aaa
}

.service_tel_content:first-child:before {
border-top-width: 0
}

.disable_txt {
display: none;
font-size: .12rem;
line-height: .2rem
}

.service_tel_tip {
line-height: .12rem;
text-align: center;
color: #666;
background-color: #e0e0e0;
padding: .05rem .1rem
}

.process_layer {
top: 0 !important;
background-color: rgba(0, 0, 0, .9);
pointer-events: none
}

.process-box {
margin: 35px 20px 20px 25px
}

.process-box .process-item {
position: relative;
padding-left: 20px;
padding-bottom: 15px;
color: #999;
font-size: 14px
}

.process-box .process-item:before {
border-left: 1px solid #999
}

.process-box .process-item .time-tip {
color: #999;
font-size: 12px
}

.process-box .process-item .time-tip .hour-tip {
margin-left: 15px
}

.process-box .routes_icon {
top: -2px;
left: -9px;
background-color: rgba(0, 0, 0, .9);
box-sizing: border-box;
line-height: 11px
}

.process-box .f_circle {
display: inline-block;
line-height: 1;
font-size: 14px;
width: 14px;
height: 14px;
border-radius: 14px;
background-color: #999
}

.process-box .process-item:last-child {
padding-bottom: 0
}

.process-box .process-item:last-child:before {
border-left: 0
}

.process-get .time-tip {
color: #999
}

.process-get .routes_icon {
left: -6px
}

.process-get .f_circle {
width: 8px;
height: 8px;
left: -4px
}

.process-now.process-item {
color: #71c13d
}

.process-now.process-item .time-tip {
color: #71c13d
}

.process-now .routes_icon {
top: -4px;
left: -11px
}

.process-now .f_circle {
left: -9px;
background-color: #71c13d;
border: 2px solid #e6ffd6
}

.detail-time-tip {
margin-left: 25px;
color: #999;
font-size: 12px
}

.captcha_wrap {
width: 2.6rem;
padding: 25px;
margin-top: -40px;
background: #fff;
border-radius: 4px
}

.captcha_wrap .content_tip {
font-size: 16px;
color: #333;
line-height: 20px;
margin-bottom: 10px
}

.captcha_wrap .error_tip {
visibility: hidden;
height: 14px;
margin-bottom: 15px;
font-size: 12px;
color: #ee3b28
}

.captcha_content {
width: 100%;
margin-bottom: 5px
}

.captcha_content .content_input {
width: 1.4rem;
height: 30px;
background: #fff;
border: 1px solid #6ac0ff;
box-sizing: border-box;
line-height: 16px;
padding: 10px;
margin-right: 10px;
font-size: 14px;
vertical-align: middle;
border-radius: 0
}

.captcha_content .border_error {
border-color: #ff461b
}

.captcha_content .content_img {
vertical-align: top;
display: inline-block;
width: 70px;
height: 30px;
margin-right: 13px
}

.captcha_content .content_img:before {
border: 1px solid #ccc
}

.captcha_content img {
cursor: pointer;
display: inline-block;
width: 100%;
height: 100%;
border: 0;
vertical-align: middle
}

.captcha_content .content_change {
display: inline-block;
vertical-align: top;
width: 18px;
height: 18px;
cursor: pointer;
background: url(https://pages.c-ctrip.com/ticket/online/refresh.svg);
background-size: 100% 100%
}

.captcha_submit {
outline: 0;
font-size: 14px;
color: #fff;
text-align: center;
line-height: 16px;
display: block;
height: 36px;
width: 104px;
margin: 0 auto;
border: none;
background-color: #ccc;
border-radius: 4px;
cursor: pointer
}

.captcha_submit.cur {
background-color: #54acff
}

.detail_info_table .table_item, .info_content, .order_btmn, .order_btmn_item, .order_status, .voucher-list {
display: -webkit-box;
display: -ms-flexbox;
display: -webkit-flex;
display: flex
}

.detail_info_table .table_item .content, .detail_info_table .table_item .time {
-webkit-box-flex: 1;
-moz-box-flex: 1;
-webkit-flex: 1;
flex: 1;
-ms-flex: 1
}

.order_btmn, .order_btmn_item {
-webkit-box-pack: center;
-webkit-justify-content: center;
-ms-flex-pack: center;
justify-content: center;
-webkit-box-align: center;
-webkit-align-items: center;
-ms-flex-align: center;
align-items: center
}

.align-start, .voucher-list {
-webkit-align-items: flex-start;
-moz-align-items: flex-start;
-webkit-box-align: start;
-ms-flex-align: start;
align-items: flex-start
}

.detail_info_table .table_item .content, .voucher-list {
-webkit-box-orient: horizontal;
-webkit-flex-direction: row;
flex-direction: row
}

.flex_column, .order_btmn {
-webkit-box-orient: vertical;
-webkit-box-direction: normal;
-ms-flex-direction: column;
-webkit-flex-direction: column;
flex-direction: column
}

.orderdetail .ttd-layer-box .title-box {
background: #fff;
height: 56px;
border-color: rgba(0, 0, 0, .09)
}

.orderdetail .ttd-layer-box .title-box .cui-text-center {
padding: 10px 24px;
font-size: 16px;
font-weight: 700;
color: rgba(0, 0, 0, .85)
}

.orderdetail .ttd-layer-box .title-box .close-btn {
color: rgba(0, 0, 0, .25)
}

.orderdetail .ttd-layer-box .cancel-order-content {
padding: 15px 24px 24px
}

.orderdetail .ttd-layer-box .cancel-order-content .cancel-title {
font-size: 16px;
color: rgba(0, 0, 0, .85);
line-height: 24px;
font-weight: 700
}

.orderdetail .ttd-layer-box .cancel-order-content .cancel-reason {
-webkit-flex-wrap: wrap;
-ms-flex-wrap: wrap;
flex-wrap: wrap;
margin-right: 24px
}

.orderdetail .ttd-layer-box .cancel-order-content .cancel-reason-item {
font-size: 14px;
color: rgba(0, 0, 0, .65);
line-height: 22px;
margin-top: 16px
}

.orderdetail .ttd-layer-box .cancel-order-content .cancel-reason-item .checkbox {
margin-right: 8px;
width: 14px;
height: 14px;
border-radius: 50%;
border: 1px solid #d9d9d9;
cursor: pointer
}

.orderdetail .ttd-layer-box .cancel-order-content .cancel-reason-item .checkbox span {
background: #fff;
width: 8px;
height: 8px;
border-radius: 50%;
display: block;
margin: 3px auto
}

.orderdetail .ttd-layer-box .cancel-order-content .cancel-reason-item .checkbox.checked {
border-color: #1890ff
}

.orderdetail .ttd-layer-box .cancel-order-content .cancel-reason-item .checkbox.checked span {
background: #1890ff
}

.orderdetail .ttd-layer-box .cancel-order-content .rmk-wrap {
border: 1px solid #ececec;
border-radius: 4px;
padding: 8px;
margin-top: 15px
}

.orderdetail .ttd-layer-box .cancel-order-content .rmk-wrap.focus {
border-color: rgba(0, 134, 246, .5)
}

.orderdetail .ttd-layer-box .cancel-order-content .rmk-wrap textarea {
border: none;
font-size: 14px;
color: #333;
line-height: 20px;
width: 100%;
height: 50px;
resize: none;
outline: 0;
background: 0 0
}

.orderdetail .ttd-layer-box .cancel-order-content .rmk-wrap p {
font-size: 14px;
color: #999;
text-align: right;
line-height: 20px
}

.orderdetail .ttd-layer-box .cancel-btn-group {
margin-top: 16px;
border-top: 1px solid rgba(0, 0, 0, .09)
}

.orderdetail .ttd-layer-box .cancel-btn-group div {
padding: 16px 24px;
text-align: right
}

.orderdetail .ttd-layer-box .cancel-btn-group div .btn {
font-size: 14px;
line-height: 22px;
margin-left: 8px;
background: #ffff;
cursor: pointer;
min-width: 74px;
min-height: 32px;
border-radius: 4px
}

.orderdetail .ttd-layer-box .cancel-btn-group div .btn-cancel {
color: #0086f6;
border: 1px solid #0086f6
}

.orderdetail .ttd-layer-box .cancel-btn-group div .btn-confirm {
color: #fff;
background: #1890ff
}

.orderdetail .ttd-layer-box .cancel-btn-group div .btn-confirm.unable {
background: #ccc
}

.orderdetail_page {
width: 1180px;
margin: 0 auto
}

.orderdetail_page .tip_add_bottom {
height: 30px
}

.orderdetail_page .tkt_tip {
margin: 10px 0;
border: 1px solid #f7daa2;
background: #fff9e4;
font-size: 12px;
color: #f70;
line-height: 12px;
padding: 8px 24px
}

.orderdetail_page .tkt_tip i {
background-image: url(//pages.c-ctrip.com/ticket/online/ticket_order.png?20191205173808);
background-position: 94px -129px;
width: 19px;
height: 19px;
margin-right: 5px;
display: inline-block
}

.order_bg {
position: fixed;
top: 44px;
left: 0;
width: 100%;
height: 80vh
}

.icon-consulting {
display: inline-block;
width: 28px;
height: 28px;
vertical-align: middle;
background: url(https://pages.c-ctrip.com/ticket/h5/consulting.png?20191205173808) no-repeat;
background-size: 28px
}

.loading_box {
font-size: 12px;
color: #fff
}

.orderdetail_box {
font-size: 11px;
padding: 0 8px;
word-break: break-all;
word-wrap: break-word;
-webkit-transform: translate3d(0, 0, 0);
transform: translate3d(0, 0, 0)
}

.orderdetail_box .arrow-right {
color: #999
}

.orderdetail_box .ttd-cui-rate {
margin: 5px 0 0 10px;
-ms-zoom: .7;
zoom: .7
}

.orderdetail_box .txt-scale[class*=f-arrow-light-] {
width: 6px;
height: 16px;
padding-left: 8px;
font-size: 18px;
vertical-align: -11px
}

.orderdetail_box .tkt_tip {
margin: 0 -8px 10px
}

.orderdetail_list .orderdetail_item {
border: 1px solid #ccc;
margin-bottom: 10px
}

.orderdetail_list .detail_name {
font-size: 16px;
color: #333;
line-height: 1;
padding: 15px 10px
}

.orderdetail_list .scenic_ext {
margin: 0;
padding: 10px
}

.orderdetail_list .detail-ask .f-arrow-light-right {
font-size: 18px;
margin-left: 0;
position: relative;
bottom: -4px
}

.orderdetail_list .insurance_tip {
padding: 5px 0 2px 0
}

.orderdetail_list .invoice_info {
font-size: 14px;
line-height: 18px;
margin-left: 0
}

.orderdetail_list .order_entr_btn {
background-color: transparent
}

.orderdetail_list .booking_policy_list, .orderdetail_list .tab_slide_box, .orderdetail_list .ticket-resource-title, .orderdetail_list .ticket-resource-title-box, .orderdetail_list .ttd-pro-box .detail-ask {
background-color: transparent
}

.orderdetail_list .ttd-pro-box .detail-ask {
margin-top: -2px;
padding-top: 10px
}

.orderdetail_list .ticket-resource-title {
padding: 12px 10px 12px 0
}

.orderdetail_list .view-more {
color: #666;
background-color: transparent
}

.orderdetail_list .event-info {
padding: 0 10px
}

.orderdetail_list .event-info .arrow-right, .orderdetail_list .scenic_ext .arrow-right {
font-size: 12px
}

.orderdetail_list .way-help .f-card {
display: none
}

.orderdetail_list .way-help p {
margin-right: 8px
}

.orderdetail_list .info_p {
min-height: 25px
}

.order_gorefund {
font-size: 14px;
color: #fff;
padding: 13px 10px;
background-color: rgba(255, 255, 255, .2)
}

.order_list_ul {
border-radius: 5px;
overflow: hidden
}

.order_list_ul .order_list_li {
position: relative;
padding: 10px 15px 0;
line-height: 29px
}

.order_comment_title {
font-size: 15px;
line-height: 22px;
color: #333;
padding-bottom: 5px
}

.order_comment_tip {
color: #54acff;
font-size: 12px
}

.order_comment_num {
border: 1px solid #54acff;
border-radius: 5px 5px 0 0
}

.order_comment_num .comment_num_li {
text-align: center;
color: #54acff;
border-right: 1px solid #54acff
}

.order_comment_num .comment_num_li:last-child {
border-right: none
}

.order_comment_num .comment_num_li.cur {
color: #fff;
background-color: #54acff
}

.order_comment_txt textarea {
width: 100%;
height: 75px;
padding: 6px;
font-size: 12px;
border: 1px solid #54acff;
border-top: none;
border-radius: 0 0 5px 5px;
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box
}

.order_comment_submit {
padding-bottom: 15px;
text-align: center
}

.order_comment_submit p {
display: inline-block;
font-size: 14px;
color: #999;
min-width: 150px;
height: 30px;
line-height: 30px;
text-align: center;
border-radius: 15px;
padding: 0 15px;
background-color: #eee
}

.order_comment_submit .cur {
color: #fff;
background-color: #54acff;
-webkit-box-shadow: 0 2px 20px -2px rgba(58, 160, 255, .4);
-moz-box-shadow: 0 2px 20px -2px rgba(58, 160, 255, .4);
box-shadow: 0 2px 20px -2px rgba(58, 160, 255, .4)
}

.photo_btn_box {
padding-bottom: 10px;
margin-top: -3px
}

.photo_btn {
height: 40px;
line-height: 40px;
border-radius: 20px;
color: #fff;
background-color: #ffac2d;
font-size: 14px;
text-align: center;
padding: 0 20px;
-webkit-box-shadow: 0 2px 20px -2px rgba(0, 0, 10, .1);
-moz-box-shadow: 0 2px 20px -2px rgba(0, 0, 10, .1);
box-shadow: 0 2px 20px -2px rgba(0, 0, 10, .1)
}

.photo_btn .txt {
margin: 0 20px 0 10px
}

.photo_btn .f-ztkt_29 {
font-size: 15px
}

.photo_btn .photo_title {
margin-left: 10px
}

.rec_slide_box {
width: calc(100vw - 16px);
height: initial
}

.rec_tab_box {
padding-top: 10px
}

.rec_tab_box .tab_item:only-child {
padding-left: 10px;
text-align: left
}

.rec_tab_box .tab_item:only-child .tab_bottom {
display: none
}

.rec_tab_box .tab_item:only-child.current .tab_name {
color: #333
}

.order_rec_ads {
height: 60px;
border-radius: 5px;
margin-bottom: 10px;
-webkit-transform: rotate(0);
transform: rotate(0);
overflow: hidden
}

.order_btmn {
line-height: 50px;
background-color: #fbfbfb;
width: 248px;
min-height: 200px;
z-index: 1;
border-left: 1px dashed #ccc
}

.order_status {
justify-content: space-between;
padding: 0 0 0 24px;
word-break: break-all
}

.order_status .status_text {
padding: 24px 0
}

.status_info {
line-height: 1
}

.status_info .f-info {
margin-left: 5px
}

.order_tab {
width: 100%;
height: 0;
z-index: 2;
background-color: #fff
}

.order_tab .tab_item {
padding-bottom: 0;
line-height: 50px
}

.order_tab .tab_bottom {
padding: 0 5px
}

.order_tab.tkt-tab {
position: static;
padding-bottom: 0
}

.order_tab ul {
background-color: #fff
}

.order_status + .order_tab {
width: initial;
height: initial;
margin: 0 -8px 10px
}

.order_checkprocess {
line-height: 28px
}

.order_btmn_item {
min-height: 50px;
font-size: 14px;
color: #666;
text-align: center
}

.order_btmn_item + .order_btmn_item p:before {
height: 18px;
top: 50%;
-webkit-transform: translate(0, -50%);
transform: translate(0, -50%)
}

.order_btmn_item .f-ztkt_18 {
position: absolute;
top: -16px;
left: 3px;
height: 0;
font-size: 55px;
line-height: 6px
}

.order_btmn_item .btn_more {
padding-left: 10px
}

.order_btmn_item p {
line-height: 16px
}

.order_btmn_item .btmn_cashback {
font-size: 11px;
color: #ff7d13
}

.order_btmn_item .info_btn {
background-color: #0086f6;
border: 1px solid #0086f6;
border-radius: 4px;
color: #fff;
width: 140px;
font-size: 14px;
padding-top: 8px;
padding-bottom: 8px;
cursor: pointer
}

.order_btmn_item .info_btn:hover {
background-color: #4daaf8;
border-color: #4daaf8
}

.order_btmn_item .warn_btn {
background-color: #f70;
border: 1px solid #f70;
border-radius: 4px;
color: #fff;
width: 140px;
font-size: 14px;
padding-top: 8px;
padding-bottom: 8px;
cursor: pointer
}

.order_btn_tip {
position: fixed;
left: 0;
bottom: 50px;
width: 100%;
height: 30px;
line-height: 30px;
padding: 0 15px;
font-size: 12px;
text-align: center;
color: #481a03;
background-color: #fffdf2
}

.continue_pay {
font-size: 14px;
color: #fff;
background-color: #ff7d13;
border-radius: 4px;
width: 140px;
padding-top: 8px;
padding-bottom: 8px;
cursor: pointer
}

.continue_pay .title {
font-size: 14px;
display: block
}

.continue_pay .txt {
font-size: 14px
}

.order_titbox {
font-size: 16px;
color: #333;
padding: 13px 10px
}

.info_content {
font-size: 12px;
padding: 8px 0;
line-height: 21px;
word-break: break-all;
word-wrap: break-word
}

.info_content .info_left {
color: #999;
width: 60px;
min-width: 60px;
font-size: 12px;
text-align: right
}

.info_content .info_right {
color: #333;
margin-left: 16px
}

.invoice_tip {
color: #f40;
font-size: 12px
}

.order_infotit {
width: 100%;
color: #000;
font-size: 14px;
line-height: 25px;
overflow: hidden
}

.basicinfo_name {
max-height: 75px
}

.basicinfo_num {
font-size: 12px;
color: #999;
margin-left: 3px
}

.order_gocomment {
width: 100%
}

.order_gocomment .comment_title {
margin: 0 -10px 10px;
padding: 0 10px 10px
}

.order_gocomment .basicinfo_num {
padding: 0 3px
}

.btn_more_layer {
min-height: 120px;
margin: 0 15px
}

.btn_more_layer .more_box {
margin: 0 10px;
border-radius: 10px;
background-color: #fff
}

.btn_more_layer .more_item {
font-size: 16px;
color: #19a0f0;
height: 50px;
line-height: 50px;
text-align: center
}

.btn_more_layer .btn_cancel {
margin: 10px;
border-radius: 10px;
background-color: #fff
}

.qrcode_title {
margin: 15px 10px 5px;
text-align: center
}

.qrcode_title span.after, .qrcode_title span.before {
content: "";
display: inline-block;
width: 50px;
height: 1px;
background-color: #999;
vertical-align: 4px
}

.qrcode_title .before {
margin-right: 10px
}

.qrcode_title .after {
margin-left: 10px
}

.qrcode_title .title_txt {
display: inline-block;
font-size: 12px;
color: #999;
line-height: 18px;
text-align: center
}

.aux_code {
font-size: 12px;
color: #333;
text-align: center;
line-height: 12px;
word-break: break-all;
word-wrap: break-word;
margin-top: 8px
}

.list_item {
padding: 0 24px
}

.list_item .title_box {
margin: 0 -24px;
padding: 15px 24px 17px;
background: #ecf6ff;
font-size: 16px;
color: #333
}

.list_item .f-arrow-light-right {
color: #999
}

.list_item .title {
font-size: 15px;
color: #000
}

.list_item .basicinfo_num {
color: #333;
margin-left: 5px
}

.list_item .right-btn {
border: 1px solid #0086f6;
border-radius: 4px;
padding: 4px 12px;
color: #0086f6;
font-size: 12px;
cursor: pointer
}

.order_refund {
padding: 0 24px
}

.order_refund .info_left {
font-size: 12px;
color: #999;
width: 60px
}

.order_refund .tag_bg_box .blue_bg {
color: #333;
font-size: 12px;
border: none;
line-height: 16px
}

.order_refund .tag_bg_box .aurantia_bg {
font-size: 12px;
color: #f70;
line-height: 12px
}

.order_refund .refund_info {
margin-left: 76px
}

.order_refund .refund_info p {
line-height: 16px;
color: #333;
font-size: 12px;
margin-bottom: 10px
}

.order_refund .list_item {
padding: 5px 9px
}

.order_refund .time_tip {
font-size: 14px;
text-align: center
}

.order_list_item {
color: #333;
font-size: 15px;
padding: 7px 9px
}

.order_list_item .info_right {
color: #999;
font-size: 14px
}

.order_logistics {
color: #999;
font-size: 12px;
line-height: 20px
}

.order_logistics .title_info {
padding-bottom: 3px
}

.order_logistics .title_info span {
margin-left: 10px
}

.order_logistics .logistics_info {
font-size: 16px;
color: #09a0f0;
margin-right: 5px
}

.order_logistics [class*=f-ztkt_] {
font-size: 14px;
line-height: 1;
vertical-align: -2px;
margin-right: 6px
}

.look_info_ul {
margin-bottom: 50px;
background-color: #fff
}

.look_info_li {
position: relative;
color: #333;
font-size: 16px;
height: 74px;
line-height: 74px;
margin-left: 15px
}

.look_info_li .info_right {
margin-left: 95px
}

.look_info_li input {
text-overflow: ellipsis;
white-space: nowrap;
overflow: hidden;
padding-right: 130px
}

.look_info_li input::-webkit-scrollbar {
display: none
}

.look_info_li .error_tip {
position: absolute;
bottom: 6px;
left: 95px;
line-height: 16px;
font-size: 13px;
color: #ff2f39
}

.auth_send {
position: absolute;
top: 20px;
right: 20px;
display: inline-block;
width: 90px;
height: 30px;
line-height: 30px;
padding: 0 6px;
font-size: 13px;
text-align: center;
color: #fff;
background-color: #54acff;
border-radius: 5px;
-webkit-box-sizing: border-box;
box-sizing: border-box
}

.auth_send.send_disabled {
background-color: #b2b2b2;
cursor: default
}

.look_info_btn {
margin: 15px;
color: #fff;
height: 40px;
text-align: center;
font-size: 16px;
line-height: 40px;
-webkit-border-radius: 3px;
border-radius: 5px;
background-color: #ccc
}

.look_info_btn.cur {
background-color: #54acff;
-webkit-box-shadow: 0 2px 20px -2px rgba(58, 160, 255, .4);
-moz-box-shadow: 0 2px 20px -2px rgba(58, 160, 255, .4);
box-shadow: 0 2px 20px -2px rgba(58, 160, 255, .4)
}

.multi-line-info {
min-height: 24px;
padding-bottom: 10px;
font-size: 14px;
text-align: center
}

.multi-line-info .info-item {
line-height: 29px
}

.multi-line-info .info-item img {
display: inline-block;
width: 100%;
margin: 10px 0 8px
}

.multi-line-info .info-item .barcode {
width: 100%;
height: 100%
}

.wallet-album {
margin: 5px 0 5px;
color: #19a0f0;
font-size: 14px;
line-height: 14px;
white-space: nowrap
}

.wallet-album [class*=f-tkt] {
font-size: 15px;
line-height: 15px;
margin: 0 5px 0 2px;
vertical-align: text-top
}

.wallet-album .disabled {
color: #999
}

.wallet-album .order-separator {
width: 1px;
display: inline-block;
background: #dbdbdb;
height: 15px;
margin: -2px 10px
}

.verification-code {
position: relative;
height: initial;
background: #f8fafd;
border-radius: 6.79px;
margin: 10px 0 0 0;
text-align: center;
line-height: 18px;
padding: 10px 8px;
font-size: 15px;
word-break: break-all;
word-wrap: break-word;
font-size: 14px;
padding: 16px 11px
}

.order-voucher {
padding: 5px 0;
text-align: center;
overflow: hidden
}

.order-voucher a {
min-height: 85px;
border-radius: 3px;
background: #f8fafd;
margin: 10px 5px;
padding: 5px 0 3px;
text-decoration: none
}

.order-voucher p {
font-size: 13px;
line-height: 25px;
text-align: center
}

.order-voucher [class*=f-tkt] {
font-size: 32px;
color: #099fde
}

.order-voucher .f-tkt-voucher {
top: 24px;
font-size: 25px
}

.detail-new-process {
margin-bottom: 5px
}

.detail-new-process .detail-right-txt {
position: absolute;
right: 3px;
top: 50%;
-webkit-transform: translateY(-50%);
transform: translateY(-50%);
padding-top: 0;
font-size: 14px;
color: #099fde
}

.detail-new-process .f-arrow-light-down, .detail-new-process .f-arrow-light-right, .detail-new-process .f-arrow-light-up {
margin-left: 2px;
font-size: 10px;
vertical-align: -1px
}

.detail-new-process .detail-ticket-content {
display: inline;
margin-right: 15px;
padding-top: 0
}

.detail-new-process .detail-followup-txt, .detail-new-process .detail-ticket-voucher {
display: inline-block;
padding-top: 0;
color: #19a0f0;
margin-left: 5px
}

.detail-new-process .long-label {
position: relative
}

.detail-new-process .long-label label {
width: auto
}

.detail-new-process .detail-supply-desc .show-little {
max-height: 60px;
overflow: hidden;
text-overflow: ellipsis;
display: -webkit-box;
-webkit-line-clamp: 3;
-webkit-box-orient: vertical
}

.detail-new-process .process-step {
-webkit-flex-wrap: wrap;
-ms-flex-wrap: wrap;
flex-wrap: wrap;
-webkit-box-pack: start;
-webkit-justify-content: flex-start;
-ms-flex-pack: start;
justify-content: flex-start;
-webkit-align-self: center;
-ms-flex-item-align: center;
align-items: center;
margin: 3px auto 10px;
padding: 0 5px;
position: relative
}

.detail-new-process .process-step li {
-webkit-box-flex: 0;
-webkit-flex: none;
-ms-flex: none;
flex: none;
-webkit-align-self: center;
-ms-flex-item-align: center;
align-items: center;
margin: 0;
padding: 0;
width: 33.333333333333336%;
min-width: 67px;
height: 36px;
line-height: 14px;
font-size: 14px;
color: #666;
border: none
}

.detail-new-process .process-step li i {
-webkit-box-flex: 0;
-webkit-flex: none;
-ms-flex: none;
flex: none;
margin-right: 5px;
width: 20px;
height: 20px;
line-height: 20px;
text-align: center;
color: #fff;
border-radius: 3px;
background: #1da2f1;
background: -moz-linear-gradient(-45deg, #1da2f1 0, #73cafe 100%);
background: -webkit-linear-gradient(-45deg, #1da2f1 0, #73cafe 100%);
background: linear-gradient(135deg, #1da2f1 0, #73cafe 100%)
}

.detail-new-process .process-step .f-process-arrow {
min-width: .2rem;
font-size: 12px;
line-height: 12px;
color: #e5e5e5;
text-align: right;
padding-right: 8px
}

.detail-new-process .process-step span {
display: inline-block;
padding: 0;
line-height: 14px
}

.detail-new-process .process-step-single li:last-child .f-process-arrow, .detail-new-process .process-step-single li:nth-child(3n) .f-process-arrow {
display: none
}

.detail-new-process .process-step-double {
position: relative;
-webkit-box-pack: start;
-webkit-justify-content: flex-start;
-ms-flex-pack: start;
justify-content: flex-start
}

.detail-new-process .process-step-double li {
position: relative;
width: 50%
}

.detail-new-process .process-step-double li:nth-child(2n) .f-process-arrow {
display: none
}

.detail-new-process .car-insurance-tip {
display: block;
margin-top: -10px;
padding-bottom: 7px
}

.hidden_info {
max-height: 60px
}

.detail-supply-more {
margin-top: 5px;
padding-right: 10px;
color: #099fde;
text-align: right
}

.order_cancel_layer .scenic-wrap {
padding: 10px 15px;
color: #333
}

.order_cancel_layer .scenic-wrap.disabled {
color: #999
}

.order_cancel_layer .scenic-wrap.disabled .f-tkt-cancel, .order_cancel_layer .scenic-wrap.disabled .f-tkt-refund {
color: #999
}

.order_cancel_layer .f-close {
font-size: 14px
}

.order_cancel_layer .f-tkt-cancel, .order_cancel_layer .f-tkt-refund {
font-size: 26px;
color: #ff6913
}

.order_cancel_layer .scenic-price {
color: #999;
font-size: 12px;
line-height: 18px
}

.order_cancel_layer .layer-refund {
padding: 0 5px 0 10px
}

.infolayer_item {
padding-bottom: 10px
}

.detail_info_table {
margin: 8px 0 13px;
font-size: 14px;
line-height: 20px;
overflow: hidden;
word-break: break-all;
word-wrap: break-word;
background: #f8fafd;
min-width: 440px;
max-width: 550px;
padding: 24px 24px 8px
}

.detail_info_table .table_item {
color: #333
}

.detail_info_table .table_item .content {
position: relative;
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box;
flex-shrink: 0;
text-align: center;
margin-bottom: 16px
}

.detail_info_table .table_item .time {
margin-bottom: 16px;
text-align: center;
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box;
flex-shrink: 0
}

.tkt_table_title {
min-height: 40px;
line-height: 20px;
background-color: #f8fafd;
text-align: center;
font-weight: 700
}

.tkt_table_title .content {
padding-right: 40px
}

.table_box .insurance_tip {
margin-top: -13px
}

.insurance_tip {
font-size: 12px;
color: #333;
padding: 5px 15px 7px 0;
word-break: break-all;
line-height: 21px
}

.table_box + .insurance_tip {
margin-top: -10px
}

.top-page-nav {
padding: 10px 0;
color: #06c;
font-size: 12px
}

.top-page-nav span {
cursor: pointer
}

.top-page-nav span:last-child {
cursor: initial
}

.top-page-nav .gary {
color: #999
}

.voucher-list {
margin-left: 76px;
-webkit-flex-wrap: wrap;
-ms-flex-wrap: wrap;
flex-wrap: wrap;
-webkit-box-align: stretch;
-webkit-align-items: stretch;
-ms-flex-align: stretch;
align-items: stretch
}

.voucher-list-item {
width: 20%;
margin: 0 8px 8px 0;
box-shadow: 0 0 6px rgba(0, 0, 0, .06);
-webkit-box-shadow: 0 0 6px rgba(0, 0, 0, .06);
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box
}

.voucher-list-item .multi-line-info {
background: #fff;
padding-top: 8px;
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box
}

.expand_vouchers {
font-size: 10px;
color: #0086f6;
line-height: 12px;
background: #ffff;
border: 1px solid #0086f6;
border-radius: 2px;
padding: 4px;
margin-left: 8px;
cursor: pointer
}

.travelerInfo p {
margin-right: 15px
}

.insurance_detail {
font-size: 12px;
color: #0086f6;
margin-left: 5px;
cursor: pointer
}

.sendmsg-layer {
width: 335px;
box-shadow: 0 1px 2px 2px rgba(0, 0, 0, .14);
-webkit-box-shadow: 0 1px 2px 2px rgba(0, 0, 0, .14);
padding: 0;
background: #fff;
font-size: 12px;
top: 0
}

.sendmsg-layer .cui-error-tips {
padding: 24px;
padding-bottom: 16px
}

.sendmsg-layer .cui-pop-box {
width: auto;
overflow: visible
}

.sendmsg-layer .cui-pop-box img {
width: 15px;
height: 20px;
position: absolute;
right: -15px;
top: 50%;
transform: translateY(-50%)
}

.sendmsg-layer .cui-roller-btns {
border-top: none
}

.sendmsg-layer .sendmsg-btn {
font-size: 12px;
color: #0086f6;
line-height: 12px;
padding: 8px 16px;
border: 1px solid #0086f6;
border-radius: 4px;
margin: 0 auto 24px;
cursor: pointer
}