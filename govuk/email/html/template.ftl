<#macro htmlEmailLayout>
    <!DOCTYPE html>
    <html lang="en" xmlns:th="http://www.w3.org/1999/xhtml" xmlns:>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=no;">
        <meta name="x-apple-disable-message-reformatting" />
        <title>${msg("emailVerificationSubject")?no_esc}</title>
        <style>
            @import url('https://fonts.googleapis.com/css?family=Open+Sans');
            body {
                font-family: 'Open Sans', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
                color: #3d3d3d;
                font-size: 16px;
                margin: 0;
                letter-spacing: 0.5px;
            }

            hr {
                border: none;
                height: 1px;
                background-color: #e3e3e3;
                margin: 16px 0;
            }

            @media only screen and (max-device-width: 600px) {
                .image{display: none!important;}
                table tr th  {
                    display: block;
                    width: 100%;
                    text-align: left!important;
                    box-sizing: border-box;
                }

                table tr.greybox th {
                    padding: 16px!important;
                    border-radius: 5px 5px 0 0;
                }
                table tr.greybox th:last-child {
                    border-radius: 0 0 5px 5px;
                }
                table tr th:not(:last-child) {
                    margin-bottom: 5px;
                }
                table tr th.more-space:not(:last-child) {
                    margin-bottom: 32px;
                }
                table tr th .button {
                    width: 100%!important;
                }
            }
        </style>
    </head>
    <body style=" background-color: #f2f2f2;">
    <!-- Styling fix for yahoo mail -->
    <style>
        @import url('https://fonts.googleapis.com/css?family=Open+Sans');
        body {
            font-family: 'Open Sans', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
            color: #3d3d3d;
            font-size: 16px;
            margin: 0;
            letter-spacing: 0.5px;
        }

        hr {
            border: none;
            height: 1px;
            background-color: #e3e3e3;
            margin: 16px 0;
        }

        @media only screen and (max-device-width: 600px) {
            .image{display: none!important;}
            table tr th {
                display: block;
                justify-content: left;
                width: 100%;
                text-align: left!important;
                box-sizing: border-box;
            }

            table tr.greybox th {
                padding: 16px!important;
                border-radius: 5px 5px 0 0;
            }
            table tr.greybox th:last-child {
                border-radius: 0 0 5px 5px;
            }
            table tr th:not(:last-child) {
                margin-bottom: 5px;
            }
            table tr th.more-space:not(:last-child) {
                margin-bottom: 32px;
            }
            table tr th .button {
                width: 100%!important;
            }
        }
    </style>
    <!-- pre-header/preview Text-->
    <div style="display: none; max-height: 0px; overflow: hidden;">
        <#if realmName??>
            ${realmName}
            <br />
        </#if>
        Thank You for Registering for DENT Exchange. To complete your registration and validate your Email address, please click the button below:
    </div>

    <!-- Insert &zwnj;&nbsp; hack after hidden preview text -->
    <div style="display: none; max-height: 0px; overflow: hidden;">
        &nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;&zwnj;&nbsp;
    </div>

    <table border="0" cellpadding="0" cellspacing="0" style="margin: 0 auto; padding: 35px 30px; max-width: 620px; background-color: white" width="100%">
        <tr>
            <td>
                <img style="height: 32px;width: 133px;" src="https://dent.exchange/email-assets/dent-logo.png" alt="DENT Wireless">
            </td>
        </tr>
        <tr>
            <td height="32"></td>
        </tr>
        <tr>
            <th align="left" valign="top" width="60%" class="more-space"></th>
        </tr>
        <tr>
            <td height="16"></td>
        </tr>
        <tr>
            <th style="color:#909090;font-size:14px;font-weight:600; text-align: left">
                <h2 style="font-size: 18px; color: #3d3d3d; margin: 0;" >Thank You for Registering for DENT</h2>
                <p>
                    <#nested "text">
                </p>

                <div class="button" style="width:188px; height: 40px; margin: 32px 0px 0px 0px;">
                    <a href="${link}" href="#" style="text-decoration: none;
                padding: 10px 14px 10px 14px;
                background-color: #fa2922;
                display: block;
                border-radius: 3px;
                font-size: 14px;
                color: white;
                text-align: center;"><#nested "linkText"></a>
                </div>
            </th>
            <td class="image" style="text-align: right; vertical-align: top">
                <img width="180"  height="151" src="https://dentx.holeapi.com/email-assets/Mail_confirm.png" alt="DENT">
            </td>
        </tr>
        <tr>
            <td height="16"></td>
        </tr>
        <tr>
            <td style="color:#909090;font-size:14px;font-weight:600; padding-top: 20px">
                <div>
                    If you are having trouble with the button above, copy and paste the following URL into your web browser.
                </div>

                <div style="font-size: 10px; word-break: break-word;">
                    <p> <a style="color: #fa2922" href="${link}" >${msg("emailVerificationSubject")?no_esc}</a></p>
                </div>
            </td>
        </tr>
        <tr>
            <td height="50"></td>
        </tr>

        <tr class="greybox">
            <th align="left" bgcolor="#f7f7f7" style="border-radius: 5px 0 0 5px; padding: 32px 42px 32px 32px; font-size: 12px; font-weight: 600; margin: 0;">Contact our support team with any questions or concerns regarding this or other notices.</th>
            <th align="right" bgcolor="#f7f7f7" style="border-radius: 0 5px 5px 0; padding: 32px 32px 32px 0; font-size: 16px; font-weight: 600; margin: 0;">
                <a target="_blank" href="https://dentwireless.zendesk.com/hc/en-us" style="display: block; border-radius: 3px; width: 180px; padding: 6px; font-size: 14px; font-weight: 600; color: #FFFFFF; text-align: center; background-color: #fa2922; margin: 0; text-decoration: none;">Contact Support</a>
            </th>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" style="margin: 0 auto; padding: 0 30px 30px 30px; max-width: 620px; background-color: white" width="100%">
        <tr>
            <th>
                <table border="0" cellpadding="0" cellspacing="0" width="50%" style="margin: 0; background-color: white; width: 100%; padding-bottom: 32px">
                    <th align="left" valign="top" width="100%" style="font-size: 12px; font-weight: 600; color: #b5b5b5;">
                        <p style="margin: 0;" >If you did not register for a DENT account, please ignore this email.</p>
                        <p style="margin: 0;" >This is an automatically generated email.</p>
                        <p style="margin: 0;">Please do not reply to it.</p>

                        <p style="margin: 20px 0 0 0;">21/F Futura Plaza</p>
                        <p style="margin: 0;">111 How Ming Street</p>
                        <p style="margin: 0;">Kwun Tong, Hong Kong</p>
                    </th>
                </table>
            </th>
            <th align="center" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width ="100%"  style="background-color: white; width:100%;">
                    <th align="center" valign="top" width="100%">
                        <div style="margin: 0 auto; display: table;">
                            <a style="text-decoration:none;" href="https://twitter.com/dentcoin" class="social-media"><img class="twitter" src="https://dent.exchange/email-assets/twitter.png" alt="DENT Twitter" style="max-height: 18px; margin-right: 50px;"></a>
                            <a style="text-decoration:none;" href="https://t.me/dentcoin" class="social-media "><img class="telegram" src="https://dent.exchange/email-assets/telegram.png" alt="DENT Telegram" style="max-height: 18px; margin-right: 50px;"></a>
                            <a style="text-decoration:none;" href="https://www.facebook.com/dentcoin/" class="social-media"><img class="facebook" src="https://dent.exchange/email-assets/facebook.png" alt="DENT Facebook" style="max-height: 18px; margin-right: 50px;"></a>
                            <a style="text-decoration:none;" href="https://www.instagram.com/_dentapp/" class="social-media"><img class="instagram" src="https://dent.exchange/email-assets/instagram.png" alt="DENT Instagram" style="max-height: 18px;"></a>
                        </div>
                    </th>
                </table>
            </th>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" style="margin: 0 auto; padding: 0 30px 35px 30px; max-width: 620px; background-color: white" width="100%">
        <tr>
            <td colspan="2"><hr/></td>
        </tr>
        <tr>
            <th align="left" colspan="2" style="font-size: 10px; font-weight: bold; color: #b5b5b5; text-transform: uppercase;">
                <span>© 2017 - 2020 DENT Wireless LTD. All rights reserved. |&nbsp;</span>
                <a target="_blank" href="https://www.dentwireless.com/tc" style="color: #fa2922">TERMS & CONDITIONS</a>
                <p>0.0.0 Local</p>
            </th>
        </tr>
    </table>
    </body>
    </html>
</#macro>