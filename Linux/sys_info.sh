<!DOCTYPE html>
<html class="" lang="en">
<head prefix="og: http://ogp.me/ns#">
<meta charset="utf-8">
<link as="style" href="https://asu.bootcampcontent.com/assets/application-515dc29796a763b500d37ec0c765957a136c9e1f1972bb52c3d7edcf4b6b8bbe.css" rel="preload">
<link as="style" href="https://asu.bootcampcontent.com/assets/highlight/themes/white-3dc16a1a591e4b4ebf0a3b185f2a92790dada139f107cde1bcb5fa03a563b0c6.css" rel="preload">

<meta content="IE=edge" http-equiv="X-UA-Compatible">
<script>
//<![CDATA[
var gl = window.gl || {};
gl.startup_calls = {"/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/blob/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh?format=json\u0026viewer=simple":{}};
gl.startup_graphql_calls = null;

if (gl.startup_calls && window.fetch) {
  Object.keys(gl.startup_calls).forEach(apiCall => {
    // fetch won’t send cookies in older browsers, unless you set the credentials init option.
    // We set to `same-origin` which is default value in modern browsers.
    // See https://github.com/whatwg/fetch/pull/585 for more information.
    gl.startup_calls[apiCall] = {
      fetchCall: fetch(apiCall, { credentials: 'same-origin' })
    };
  });
}
if (gl.startup_graphql_calls && window.fetch) {
  const url = `https://asu.bootcampcontent.com/api/graphql`

  const opts = {
    method: "POST",
    headers: { "Content-Type": "application/json", 'X-CSRF-Token': "PASlamwh7GyEPNefVRaQ/Nhi+b6408uSNelkdy7XL6Ha0Dj8FNXbAJY+YDJUTgUUovoiX1+E5Idy1edJndwmag==" },
  };

  gl.startup_graphql_calls = gl.startup_graphql_calls.map(call => ({
    ...call,
    fetchCall: fetch(url, {
      ...opts,
      credentials: 'same-origin',
      body: JSON.stringify(call)
    })
  }))
}


//]]>
</script>
<meta content="object" property="og:type">
<meta content="GitLab" property="og:site_name">
<meta content="1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh · master · ASU-Coding-Bootcamp / ASU-VIRT-CYBER-PT-06-2021-U-LOL" property="og:title">
<meta content="GitLab Enterprise Edition" property="og:description">
<meta content="https://asu.bootcampcontent.com/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png" property="og:image">
<meta content="64" property="og:image:width">
<meta content="64" property="og:image:height">
<meta content="https://asu.bootcampcontent.com/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/blob/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh" property="og:url">
<meta content="summary" property="twitter:card">
<meta content="1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh · master · ASU-Coding-Bootcamp / ASU-VIRT-CYBER-PT-06-2021-U-LOL" property="twitter:title">
<meta content="GitLab Enterprise Edition" property="twitter:description">
<meta content="https://asu.bootcampcontent.com/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png" property="twitter:image">

<title>1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh · master · ASU-Coding-Bootcamp / ASU-VIRT-CYBER-PT-06-2021-U-LOL · GitLab</title>
<meta content="GitLab Enterprise Edition" name="description">
<link rel="prefetch" href="/assets/webpack/monaco.41e775e7.chunk.js">
<link rel="shortcut icon" type="image/png" href="/assets/favicon-7901bd695fb93edb07975966062049829afb56cf11511236e61bcf425070e36e.png" id="favicon" data-original-href="/assets/favicon-7901bd695fb93edb07975966062049829afb56cf11511236e61bcf425070e36e.png" />
<style>
@keyframes blinking-dot{0%{opacity:1}25%{opacity:0.4}75%{opacity:0.4}100%{opacity:1}}@keyframes blinking-scroll-button{0%{opacity:0.2}50%{opacity:1}100%{opacity:0.2}}@keyframes gl-spinner-rotate{0%{transform:rotate(0)}100%{transform:rotate(360deg)}}body.ui-indigo .navbar-gitlab{background-color:#292961}body.ui-indigo .navbar-gitlab .navbar-collapse{color:#d1d1f0}body.ui-indigo .navbar-gitlab .container-fluid .navbar-toggler{border-left:1px solid #6868b9;color:#d1d1f0}body.ui-indigo .navbar-gitlab .navbar-sub-nav>li>a:hover,body.ui-indigo .navbar-gitlab .navbar-sub-nav>li>a:focus,body.ui-indigo .navbar-gitlab .navbar-sub-nav>li>button:hover,body.ui-indigo .navbar-gitlab .navbar-sub-nav>li>button:focus,body.ui-indigo .navbar-gitlab .navbar-nav>li>a:hover,body.ui-indigo .navbar-gitlab .navbar-nav>li>a:focus,body.ui-indigo .navbar-gitlab .navbar-nav>li>button:hover,body.ui-indigo .navbar-gitlab .navbar-nav>li>button:focus{background-color:rgba(209,209,240,0.2)}body.ui-indigo .navbar-gitlab .navbar-sub-nav>li.active>a,body.ui-indigo .navbar-gitlab .navbar-sub-nav>li.active>button,body.ui-indigo .navbar-gitlab .navbar-sub-nav>li.dropdown.show>a,body.ui-indigo .navbar-gitlab .navbar-sub-nav>li.dropdown.show>button,body.ui-indigo .navbar-gitlab .navbar-nav>li.active>a,body.ui-indigo .navbar-gitlab .navbar-nav>li.active>button,body.ui-indigo .navbar-gitlab .navbar-nav>li.dropdown.show>a,body.ui-indigo .navbar-gitlab .navbar-nav>li.dropdown.show>button{color:#292961;background-color:#fff}body.ui-indigo .navbar-gitlab .navbar-sub-nav>li.line-separator,body.ui-indigo .navbar-gitlab .navbar-nav>li.line-separator{border-left:1px solid rgba(209,209,240,0.2)}body.ui-indigo .navbar-gitlab .navbar-sub-nav{color:#d1d1f0}body.ui-indigo .navbar-gitlab .nav>li{color:#d1d1f0}body.ui-indigo .navbar-gitlab .nav>li>a .notification-dot{border:2px solid #292961}body.ui-indigo .navbar-gitlab .nav>li>a.header-help-dropdown-toggle .notification-dot{background-color:#d1d1f0}body.ui-indigo .navbar-gitlab .nav>li>a.header-user-dropdown-toggle .header-user-avatar{border-color:#d1d1f0}@media (min-width: 576px){body.ui-indigo .navbar-gitlab .nav>li>a:hover,body.ui-indigo .navbar-gitlab .nav>li>a:focus{background-color:rgba(209,209,240,0.2)}}body.ui-indigo .navbar-gitlab .nav>li>a:hover svg,body.ui-indigo .navbar-gitlab .nav>li>a:focus svg{fill:currentColor}body.ui-indigo .navbar-gitlab .nav>li>a:hover .notification-dot,body.ui-indigo .navbar-gitlab .nav>li>a:focus .notification-dot{will-change:border-color, background-color;border-color:#4a4a82}body.ui-indigo .navbar-gitlab .nav>li>a:hover.header-help-dropdown-toggle .notification-dot,body.ui-indigo .navbar-gitlab .nav>li>a:focus.header-help-dropdown-toggle .notification-dot{background-color:#fff}body.ui-indigo .navbar-gitlab .nav>li.active>a,body.ui-indigo .navbar-gitlab .nav>li.dropdown.show>a{color:#292961;background-color:#fff}body.ui-indigo .navbar-gitlab .nav>li.active>a:hover svg,body.ui-indigo .navbar-gitlab .nav>li.dropdown.show>a:hover svg{fill:#292961}body.ui-indigo .navbar-gitlab .nav>li.active>a .notification-dot,body.ui-indigo .navbar-gitlab .nav>li.dropdown.show>a .notification-dot{border-color:#fff}body.ui-indigo .navbar-gitlab .nav>li.active>a.header-help-dropdown-toggle .notification-dot,body.ui-indigo .navbar-gitlab .nav>li.dropdown.show>a.header-help-dropdown-toggle .notification-dot{background-color:#292961}body.ui-indigo .navbar-gitlab .nav>li .impersonated-user svg,body.ui-indigo .navbar-gitlab .nav>li .impersonated-user:hover svg{fill:#292961}body.ui-indigo .navbar .title>a:hover,body.ui-indigo .navbar .title>a:focus{background-color:rgba(209,209,240,0.2)}body.ui-indigo .search form{background-color:rgba(209,209,240,0.2)}body.ui-indigo .search form:hover{background-color:rgba(209,209,240,0.3)}body.ui-indigo .search .search-input::-ms-input-placeholder{color:rgba(209,209,240,0.8)}body.ui-indigo .search .search-input::placeholder{color:rgba(209,209,240,0.8)}body.ui-indigo .search .search-input-wrap .search-icon,body.ui-indigo .search .search-input-wrap .clear-icon{fill:rgba(209,209,240,0.8)}body.ui-indigo .search.search-active form{background-color:#fff}body.ui-indigo .search.search-active .search-input-wrap .search-icon{fill:rgba(209,209,240,0.8)}body.ui-indigo .nav-sidebar li.active{box-shadow:inset 4px 0 0 #4b4ba3}body.ui-indigo .nav-sidebar li.active>a{color:#393982}body.ui-indigo .nav-sidebar li.active .nav-icon-container svg{fill:#393982}body.ui-indigo .sidebar-top-level-items>li.active .badge.badge-pill{color:#393982}body.ui-indigo .nav-links li.active a,body.ui-indigo .nav-links li.md-header-tab.active button,body.ui-indigo .nav-links li a.active{border-bottom:2px solid #6666c4}body.ui-indigo .nav-links li.active a .badge.badge-pill,body.ui-indigo .nav-links li.md-header-tab.active button .badge.badge-pill,body.ui-indigo .nav-links li a.active .badge.badge-pill{font-weight:600}body.ui-indigo .emoji-picker-category-active{border-bottom-color:#6666c4}body.ui-indigo .branch-header-title{color:#4b4ba3}body.ui-indigo .ide-sidebar-link.active{color:#4b4ba3;box-shadow:inset 3px 0 #4b4ba3}body.ui-indigo .ide-sidebar-link.active.is-right{box-shadow:inset -3px 0 #4b4ba3}

*,*::before,*::after{box-sizing:border-box}html{font-family:sans-serif;line-height:1.15}aside,header{display:block}body{margin:0;font-family:-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Noto Sans", Ubuntu, Cantarell, "Helvetica Neue", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";font-size:1rem;font-weight:400;line-height:1.5;color:#303030;text-align:left;background-color:#fff}h1{margin-top:0;margin-bottom:0.25rem}ul{margin-top:0;margin-bottom:1rem}ul ul{margin-bottom:0}strong{font-weight:bolder}a{color:#007bff;text-decoration:none;background-color:transparent}a:not([href]):not([class]){color:inherit;text-decoration:none}img{vertical-align:middle;border-style:none}svg{overflow:hidden;vertical-align:middle}button{border-radius:0}input,button{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}button,input{overflow:visible}button{text-transform:none}[role="button"]{cursor:pointer}button:not(:disabled),[type="button"]:not(:disabled){cursor:pointer}button::-moz-focus-inner,[type="button"]::-moz-focus-inner{padding:0;border-style:none}[type="search"]{outline-offset:-2px}h1{margin-bottom:0.25rem;font-weight:600;line-height:1.2;color:#303030}h1{font-size:2.1875rem}.list-unstyled{padding-left:0;list-style:none}.container-fluid{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}.form-control{display:block;width:100%;height:34px;padding:0.375rem 0.75rem;font-size:0.875rem;font-weight:400;line-height:1.5;color:#303030;background-color:#fff;background-clip:padding-box;border:1px solid #dbdbdb;border-radius:0.25rem}.form-control:-moz-focusring{color:transparent;text-shadow:0 0 0 #303030}.form-control::-ms-input-placeholder{color:#5e5e5e;opacity:1}.form-control::-ms-input-placeholder{color:#5e5e5e;opacity:1}.form-control::placeholder{color:#5e5e5e;opacity:1}.form-control:disabled{background-color:#fafafa;opacity:1}.form-inline{display:flex;flex-flow:row wrap;align-items:center}@media (min-width: 576px){.form-inline .form-control{display:inline-block;width:auto;vertical-align:middle}}.btn{display:inline-block;font-weight:400;color:#303030;text-align:center;vertical-align:middle;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;user-select:none;background-color:transparent;border:1px solid transparent;padding:0.375rem 0.75rem;font-size:1rem;line-height:20px;border-radius:0.25rem}.btn:disabled{opacity:0.65}.btn:not(:disabled):not(.disabled){cursor:pointer}.collapse:not(.show){display:none}.dropdown{position:relative}.dropdown-menu-toggle{white-space:nowrap}.dropdown-menu-toggle::after{display:inline-block;margin-left:0.255em;vertical-align:0.255em;content:"";border-top:0.3em solid;border-right:0.3em solid transparent;border-bottom:0;border-left:0.3em solid transparent}.dropdown-menu-toggle:empty::after{margin-left:0}.dropdown-menu{position:absolute;top:100%;left:0;z-index:1000;display:none;float:left;min-width:10rem;padding:0.5rem 0;margin:0.125rem 0 0;font-size:1rem;color:#303030;text-align:left;list-style:none;background-color:#fff;background-clip:padding-box;border:1px solid rgba(0,0,0,0.15);border-radius:0.25rem}.nav{display:flex;flex-wrap:wrap;padding-left:0;margin-bottom:0;list-style:none}.navbar{position:relative;display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between;padding:0.25rem 0.5rem}.navbar .container-fluid{display:flex;flex-wrap:wrap;align-items:center;justify-content:space-between}.navbar-nav{display:flex;flex-direction:column;padding-left:0;margin-bottom:0;list-style:none}.navbar-nav .dropdown-menu{position:static;float:none}.navbar-collapse{flex-basis:100%;flex-grow:1;align-items:center}.navbar-toggler{padding:0.25rem 0.75rem;font-size:1.25rem;line-height:1;background-color:transparent;border:1px solid transparent;border-radius:0.25rem}@media (max-width: 575.98px){.navbar-expand-sm>.container-fluid{padding-right:0;padding-left:0}}@media (min-width: 576px){.navbar-expand-sm{flex-flow:row nowrap;justify-content:flex-start}.navbar-expand-sm .navbar-nav{flex-direction:row}.navbar-expand-sm .navbar-nav .dropdown-menu{position:absolute}.navbar-expand-sm>.container-fluid{flex-wrap:nowrap}.navbar-expand-sm .navbar-collapse{display:flex !important;flex-basis:auto}.navbar-expand-sm .navbar-toggler{display:none}}.badge{display:inline-block;padding:0.25em 0.4em;font-size:75%;font-weight:600;line-height:1;text-align:center;white-space:nowrap;vertical-align:baseline;border-radius:0.25rem}.badge:empty{display:none}.btn .badge{position:relative;top:-1px}.badge-pill{padding-right:0.6em;padding-left:0.6em;border-radius:10rem}.rounded-circle{border-radius:50% !important}.d-none{display:none !important}.d-inline-block{display:inline-block !important}.d-block{display:block !important}@media (min-width: 576px){.d-sm-none{display:none !important}.d-sm-inline-block{display:inline-block !important}}@media (min-width: 768px){.d-md-block{display:block !important}}@media (min-width: 992px){.d-lg-none{display:none !important}.d-lg-block{display:block !important}}@media (min-width: 1200px){.d-xl-block{display:block !important}}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0, 0, 0, 0);white-space:nowrap;border:0}.m-auto{margin:auto !important}.gl-button{display:inline-flex}.gl-button:not(.btn-link):active{text-decoration:none}.gl-button.gl-button{border-width:0;padding-top:0.5rem;padding-bottom:0.5rem;padding-left:0.75rem;padding-right:0.75rem;background-color:transparent;line-height:1rem;color:#303030;fill:currentColor;box-shadow:inset 0 0 0 1px #bfbfbf;justify-content:center;align-items:center;font-size:0.875rem;border-radius:0.25rem}.gl-button.gl-button.btn-default{background-color:#fff}.gl-button.gl-button.btn-default:active,.gl-button.gl-button.btn-default.active{box-shadow:inset 0 0 0 2px #5e5e5e,0 0 0 1px rgba(255,255,255,0.4),0 0 0 4px rgba(31,117,203,0.48);outline:none;background-color:#dbdbdb}body,.form-control,.search form{font-size:0.875rem}button,html [type="button"],[role="button"]{cursor:pointer}h1{margin-top:20px;margin-bottom:10px}strong{font-weight:bold}a{color:#1068bf}.hidden{display:none !important;visibility:hidden !important}.hide{display:none}.dropdown-menu-toggle::after{display:none}.badge:not(.gl-badge){padding:4px 5px;font-size:12px;font-style:normal;font-weight:400;display:inline-block}.divider{height:0;margin:4px 0;overflow:hidden;border-top:1px solid #dbdbdb}.toggle-sidebar-button .collapse-text,.toggle-sidebar-button .icon-chevron-double-lg-left,.toggle-sidebar-button .icon-chevron-double-lg-right{color:#666}svg{vertical-align:baseline}html{overflow-y:scroll}body{-webkit-text-decoration-skip:ink;text-decoration-skip:ink}.btn{border-radius:4px;font-size:0.875rem;font-weight:400;padding:6px 10px;background-color:#fff;border-color:#dbdbdb;color:#303030;color:#303030;white-space:nowrap}.btn:active{background-color:#f0f0f0;box-shadow:none}.btn:active,.btn.active{background-color:#eaeaea;border-color:#e3e3e3;color:#303030}.btn svg{height:15px;width:15px}.btn svg:not(:last-child){margin-right:5px}.badge.badge-pill:not(.gl-badge){font-weight:400;background-color:rgba(0,0,0,0.07);color:#525252;vertical-align:baseline}.gl-font-sm{font-size:12px}.dropdown{position:relative}.search-input-container .dropdown-menu{margin-top:11px}.dropdown-menu-toggle{padding:6px 8px 6px 10px;background-color:#fff;color:#303030;font-size:14px;text-align:left;border:1px solid #dbdbdb;border-radius:0.25rem;white-space:nowrap}.no-outline.dropdown-menu-toggle{outline:0}.dropdown-menu-toggle.dropdown-menu-toggle{justify-content:flex-start;overflow:hidden;padding-right:25px;position:relative;text-overflow:ellipsis;width:160px}.dropdown-menu{display:none;position:absolute;width:auto;top:100%;z-index:300;min-width:240px;max-width:500px;margin-top:4px;margin-bottom:24px;font-size:14px;font-weight:400;padding:8px 0;background-color:#fff;border:1px solid #dbdbdb;border-radius:0.25rem;box-shadow:0 2px 4px rgba(0,0,0,0.1)}.dropdown-menu ul{margin:0;padding:0}.dropdown-menu li{display:block;text-align:left;list-style:none;padding:0 1px}.dropdown-menu li>a,.dropdown-menu li button{background:transparent;border:0;border-radius:0;box-shadow:none;display:block;font-weight:400;position:relative;padding:8px 12px;color:#303030;line-height:16px;white-space:normal;overflow:hidden;text-align:left;width:100%}.dropdown-menu li>a:active,.dropdown-menu li button:active{background-color:#eee;color:#303030;outline:0;text-decoration:none}.dropdown-menu .divider{height:1px;margin:0.25rem 0;padding:0;background-color:#dbdbdb}.dropdown-menu .badge.badge-pill+span:not(.badge):not(.badge-pill){margin-right:40px}@media (max-width: 575.98px){.navbar-gitlab li.dropdown{position:static}.navbar-gitlab li.dropdown.user-counter{margin-left:8px !important}.navbar-gitlab li.dropdown.user-counter>a{padding:0 4px !important}header.navbar-gitlab .dropdown .dropdown-menu{width:100%;min-width:100%}}@media (max-width: 767.98px){.dropdown-menu-toggle{width:100%}}input{border-radius:0.25rem;color:#303030;background-color:#fff}.form-control{border-radius:4px;padding:6px 10px}.form-control::-ms-input-placeholder{color:#868686}.form-control::-ms-input-placeholder{color:#868686}.form-control::placeholder{color:#868686}.navbar-gitlab{padding:0 16px;z-index:1000;margin-bottom:0;min-height:40px;border:0;position:fixed;top:0;left:0;right:0;border-radius:0}.navbar-gitlab .logo-text{line-height:initial}.navbar-gitlab .logo-text svg{width:55px;height:14px;margin:0;fill:#fff}.navbar-gitlab .close-icon{display:none}.navbar-gitlab .header-content{width:100%;display:flex;justify-content:space-between;position:relative;min-height:40px;padding-left:0}.navbar-gitlab .header-content .title-container{display:flex;align-items:stretch;flex:1 1 auto;padding-top:0;overflow:visible}.navbar-gitlab .header-content .title{padding-right:0;color:currentColor;display:flex;position:relative;margin:0;font-size:18px;vertical-align:top;white-space:nowrap}.navbar-gitlab .header-content .title img{height:28px}.navbar-gitlab .header-content .title img+.logo-text{margin-left:8px}.navbar-gitlab .header-content .title a{display:flex;align-items:center;padding:2px 8px;margin:5px 2px 5px -8px;border-radius:4px}.navbar-gitlab .header-content .navbar-collapse>ul.nav>li:not(.d-none){margin:0 2px}.navbar-gitlab .navbar-collapse{flex:0 0 auto;border-top:0;padding:0}@media (max-width: 575.98px){.navbar-gitlab .navbar-collapse{flex:1 1 auto}}.navbar-gitlab .navbar-collapse .nav{flex-wrap:nowrap}@media (max-width: 575.98px){.navbar-gitlab .navbar-collapse .nav>li:not(.d-none) a{margin-left:0}}.navbar-gitlab .container-fluid{padding:0}.navbar-gitlab .container-fluid .user-counter svg{margin-right:3px}.navbar-gitlab .container-fluid .navbar-toggler{position:relative;right:-10px;border-radius:0;min-width:45px;padding:0;margin:8px -7px 8px 0;font-size:14px;text-align:center;color:currentColor}.navbar-gitlab .container-fluid .navbar-toggler.active{color:currentColor;background-color:transparent}@media (max-width: 575.98px){.navbar-gitlab .container-fluid .navbar-nav{display:flex;padding-right:10px;flex-direction:row}}.navbar-gitlab .container-fluid .navbar-nav li .badge.badge-pill:not(.merge-request-badge){box-shadow:none;font-weight:600}@media (max-width: 575.98px){.navbar-gitlab .container-fluid .nav>li.header-user{padding-left:10px}}.navbar-gitlab .container-fluid .nav>li>a{will-change:color;margin:4px 0;padding:6px 8px;height:32px}@media (max-width: 575.98px){.navbar-gitlab .container-fluid .nav>li>a{padding:0}}.navbar-gitlab .container-fluid .nav>li>a.header-user-dropdown-toggle{margin-left:2px}.navbar-gitlab .container-fluid .nav>li>a.header-user-dropdown-toggle .header-user-avatar{margin-right:0}.navbar-gitlab .container-fluid .nav>li .header-new-dropdown-toggle{margin-right:0}.navbar-sub-nav>li>a,.navbar-sub-nav>li>button,.navbar-nav>li>a,.navbar-nav>li>button{display:flex;align-items:center;justify-content:center;padding:6px 8px;margin:4px 2px;font-size:12px;color:currentColor;border-radius:4px;height:32px;font-weight:600}.navbar-sub-nav>li .top-nav-toggle,.navbar-sub-nav>li>button,.navbar-nav>li .top-nav-toggle,.navbar-nav>li>button{background:transparent;border:0}.navbar-sub-nav .dropdown-menu,.navbar-nav .dropdown-menu{position:absolute}.navbar-sub-nav{display:flex;margin:0 0 0 6px}.caret-down,.btn .caret-down{top:0;height:11px;width:11px;margin-left:4px;fill:currentColor}.header-user .dropdown-menu,.header-new .dropdown-menu{margin-top:4px}.btn-sign-in{background-color:#ebebfa;color:#292961;font-weight:600;line-height:18px;margin:4px 0 4px 2px}.title-container .badge.badge-pill:not(.merge-request-badge),.navbar-nav .badge.badge-pill:not(.merge-request-badge){position:inherit;font-weight:400;margin-left:-6px;font-size:11px;color:var(--gray-950, #fff);padding:0 5px;line-height:12px;border-radius:7px;box-shadow:0 1px 0 rgba(76,78,84,0.2)}.title-container .badge.badge-pill:not(.merge-request-badge).green-badge,.navbar-nav .badge.badge-pill:not(.merge-request-badge).green-badge{background-color:var(--green-400, #2da160)}.title-container .badge.badge-pill:not(.merge-request-badge).merge-requests-count,.navbar-nav .badge.badge-pill:not(.merge-request-badge).merge-requests-count{background-color:var(--orange-400, #c17d10)}.title-container .badge.badge-pill:not(.merge-request-badge).todos-count,.navbar-nav .badge.badge-pill:not(.merge-request-badge).todos-count{background-color:var(--blue-400, #428fdc)}@media (max-width: 575.98px){.navbar-gitlab .container-fluid{font-size:18px}.navbar-gitlab .container-fluid .navbar-nav{table-layout:fixed;width:100%;margin:0;text-align:right}.navbar-gitlab .container-fluid .navbar-collapse{margin-left:-8px;margin-right:-10px}.navbar-gitlab .container-fluid .navbar-collapse .nav>li:not(.d-none){flex:1}.header-user-dropdown-toggle{text-align:center}.header-user-avatar{float:none}}.header-user-avatar{float:left;margin-right:5px;border-radius:50%;border:1px solid #f5f5f5}.notification-dot{background-color:#d99530;height:12px;width:12px;margin-top:-15px;pointer-events:none;visibility:hidden}.top-nav-toggle .dropdown-icon{margin-right:0.5rem}.tanuki-logo .tanuki-left-ear,.tanuki-logo .tanuki-right-ear,.tanuki-logo .tanuki-nose{fill:#e24329}.tanuki-logo .tanuki-left-eye,.tanuki-logo .tanuki-right-eye{fill:#fc6d26}.tanuki-logo .tanuki-left-cheek,.tanuki-logo .tanuki-right-cheek{fill:#fca326}.context-header{position:relative;margin-right:2px;width:220px}.context-header>a,.context-header>button{font-weight:600;display:flex;width:100%;align-items:center;padding:10px 16px 10px 10px;color:#303030;background-color:transparent;border:0;text-align:left}.context-header .avatar-container{flex:0 0 40px;background-color:#fff}.context-header .sidebar-context-title{overflow:hidden;text-overflow:ellipsis}@media (min-width: 768px){.page-with-contextual-sidebar{padding-left:48px}}@media (min-width: 1200px){.page-with-contextual-sidebar{padding-left:220px}}@media (min-width: 768px){.page-with-icon-sidebar{padding-left:48px}}.nav-sidebar{position:fixed;z-index:600;width:220px;top:40px;bottom:0;left:0;background-color:#fafafa;box-shadow:inset -1px 0 0 #dbdbdb;transform:translate3d(0, 0, 0)}@media (min-width: 576px) and (max-width: 576px){.nav-sidebar:not(.sidebar-collapsed-desktop){box-shadow:inset -1px 0 0 #dbdbdb,2px 1px 3px rgba(0,0,0,0.1)}}.nav-sidebar.sidebar-collapsed-desktop{width:48px}.nav-sidebar.sidebar-collapsed-desktop .nav-sidebar-inner-scroll{overflow-x:hidden}.nav-sidebar.sidebar-collapsed-desktop .badge.badge-pill:not(.fly-out-badge),.nav-sidebar.sidebar-collapsed-desktop .nav-item-name{border:0;clip:rect(0, 0, 0, 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;white-space:nowrap;width:1px}.nav-sidebar.sidebar-collapsed-desktop .sidebar-top-level-items>li>a{min-height:45px}.nav-sidebar.sidebar-collapsed-desktop .fly-out-top-item{display:block}.nav-sidebar.sidebar-collapsed-desktop .avatar-container{margin:0 auto}.nav-sidebar a{text-decoration:none}.nav-sidebar ul{padding-left:0;list-style:none}.nav-sidebar li{white-space:nowrap}.nav-sidebar li a{display:flex;align-items:center;padding:12px 16px;color:#666}.nav-sidebar li .nav-item-name{flex:1}.nav-sidebar li.active>a{font-weight:600}@media (max-width: 767.98px){.nav-sidebar{left:-220px}}.nav-sidebar .nav-icon-container{display:flex;margin-right:8px}.nav-sidebar .fly-out-top-item{display:none}.nav-sidebar svg{height:16px;width:16px}@media (min-width: 768px) and (max-width: 1199px){.nav-sidebar:not(.sidebar-expanded-mobile){width:48px}.nav-sidebar:not(.sidebar-expanded-mobile) .nav-sidebar-inner-scroll{overflow-x:hidden}.nav-sidebar:not(.sidebar-expanded-mobile) .badge.badge-pill:not(.fly-out-badge),.nav-sidebar:not(.sidebar-expanded-mobile) .nav-item-name{border:0;clip:rect(0, 0, 0, 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;white-space:nowrap;width:1px}.nav-sidebar:not(.sidebar-expanded-mobile) .sidebar-top-level-items>li>a{min-height:45px}.nav-sidebar:not(.sidebar-expanded-mobile) .fly-out-top-item{display:block}.nav-sidebar:not(.sidebar-expanded-mobile) .avatar-container{margin:0 auto}.nav-sidebar:not(.sidebar-expanded-mobile) .context-header{height:60px;width:48px}.nav-sidebar:not(.sidebar-expanded-mobile) .context-header a{padding:10px 4px}.nav-sidebar:not(.sidebar-expanded-mobile) .sidebar-context-title{border:0;clip:rect(0, 0, 0, 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;white-space:nowrap;width:1px}.nav-sidebar:not(.sidebar-expanded-mobile) .sidebar-top-level-items>li .sidebar-sub-level-items:not(.flyout-list){display:none}.nav-sidebar:not(.sidebar-expanded-mobile) .nav-icon-container{margin-right:0}.nav-sidebar:not(.sidebar-expanded-mobile) .toggle-sidebar-button{padding:16px;width:47px}.nav-sidebar:not(.sidebar-expanded-mobile) .toggle-sidebar-button .collapse-text,.nav-sidebar:not(.sidebar-expanded-mobile) .toggle-sidebar-button .icon-chevron-double-lg-left{display:none}.nav-sidebar:not(.sidebar-expanded-mobile) .toggle-sidebar-button .icon-chevron-double-lg-right{display:block;margin:0}}.nav-sidebar-inner-scroll{height:100%;width:100%;overflow:auto}.sidebar-sub-level-items{display:none;padding-bottom:8px}.sidebar-sub-level-items>li a{padding:8px 16px 8px 40px}.sidebar-sub-level-items>li.active a{background:rgba(0,0,0,0.04)}.sidebar-top-level-items{margin-bottom:60px}@media (min-width: 576px){.sidebar-top-level-items>li>a{margin-right:1px}}.sidebar-top-level-items>li .badge.badge-pill{background-color:rgba(0,0,0,0.08);color:#666}.sidebar-top-level-items>li.active{background:rgba(0,0,0,0.04)}.sidebar-top-level-items>li.active>a{margin-left:4px;padding-left:12px}.sidebar-top-level-items>li.active .badge.badge-pill{font-weight:600}.sidebar-top-level-items>li.active .sidebar-sub-level-items:not(.is-fly-out-only){display:block}.toggle-sidebar-button,.close-nav-button{height:48px;padding:0 16px;background-color:#fafafa;border:0;color:#666;display:flex;align-items:center}.toggle-sidebar-button,.close-nav-button{position:fixed;bottom:0;width:219px;border-top:1px solid #dbdbdb}.toggle-sidebar-button svg,.close-nav-button svg{margin-right:8px}.toggle-sidebar-button .icon-chevron-double-lg-right,.close-nav-button .icon-chevron-double-lg-right{display:none}.collapse-text{white-space:nowrap;overflow:hidden}.sidebar-collapsed-desktop .context-header{height:60px;width:48px}.sidebar-collapsed-desktop .context-header a{padding:10px 4px}.sidebar-collapsed-desktop .sidebar-context-title{border:0;clip:rect(0, 0, 0, 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;white-space:nowrap;width:1px}.sidebar-collapsed-desktop .sidebar-top-level-items>li .sidebar-sub-level-items:not(.flyout-list){display:none}.sidebar-collapsed-desktop .nav-icon-container{margin-right:0}.sidebar-collapsed-desktop .toggle-sidebar-button{padding:16px;width:47px}.sidebar-collapsed-desktop .toggle-sidebar-button .collapse-text,.sidebar-collapsed-desktop .toggle-sidebar-button .icon-chevron-double-lg-left{display:none}.sidebar-collapsed-desktop .toggle-sidebar-button .icon-chevron-double-lg-right{display:block;margin:0}.fly-out-top-item>a{display:flex}.fly-out-top-item .fly-out-badge{margin-left:8px}.fly-out-top-item-name{flex:1}.close-nav-button{display:none}@media (max-width: 767.98px){.close-nav-button{display:flex}.toggle-sidebar-button{display:none}}body.sidebar-refactoring.ui-indigo .nav-sidebar li.active:not(.fly-out-top-item)>a{color:#2f2a6b}body.sidebar-refactoring.ui-indigo .nav-sidebar li.active .nav-icon-container svg{fill:#2f2a6b}body.sidebar-refactoring .nav-sidebar{box-shadow:none}body.sidebar-refactoring .nav-sidebar li.active{background-color:transparent;box-shadow:none !important}@media (min-width: 768px){body.sidebar-refactoring .page-with-contextual-sidebar{padding-left:48px}}@media (min-width: 1200px){body.sidebar-refactoring .page-with-contextual-sidebar{padding-left:220px}}@media (min-width: 768px){body.sidebar-refactoring .page-with-icon-sidebar{padding-left:48px}}body.sidebar-refactoring .nav-sidebar{position:fixed;bottom:0;left:0;z-index:600;width:220px;top:40px;background-color:#f0f0f0;transform:translate3d(0, 0, 0)}body.sidebar-refactoring .nav-sidebar.sidebar-collapsed-desktop{width:48px}body.sidebar-refactoring .nav-sidebar.sidebar-collapsed-desktop .nav-sidebar-inner-scroll{overflow-x:hidden}body.sidebar-refactoring .nav-sidebar.sidebar-collapsed-desktop .badge.badge-pill:not(.fly-out-badge),body.sidebar-refactoring .nav-sidebar.sidebar-collapsed-desktop .nav-item-name,body.sidebar-refactoring .nav-sidebar.sidebar-collapsed-desktop .collapse-text{border:0;clip:rect(0, 0, 0, 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;white-space:nowrap;width:1px}body.sidebar-refactoring .nav-sidebar.sidebar-collapsed-desktop .sidebar-top-level-items>li>a{min-height:unset}body.sidebar-refactoring .nav-sidebar.sidebar-collapsed-desktop .fly-out-top-item:not(.divider){display:block !important}body.sidebar-refactoring .nav-sidebar.sidebar-collapsed-desktop .avatar-container{margin:0 auto}body.sidebar-refactoring .nav-sidebar.sidebar-collapsed-desktop li.active:not(.fly-out-top-item)>a{background-color:rgba(41,41,97,0.08)}body.sidebar-refactoring .nav-sidebar a{text-decoration:none;color:#2f2a6b}body.sidebar-refactoring .nav-sidebar li{white-space:nowrap}body.sidebar-refactoring .nav-sidebar li .nav-item-name{flex:1}body.sidebar-refactoring .nav-sidebar li>a,body.sidebar-refactoring .nav-sidebar li>.fly-out-top-item-container{padding-left:0.75rem;padding-right:0.75rem;padding-top:0.5rem;padding-bottom:0.5rem;display:flex;align-items:center;border-radius:0.25rem;width:auto;line-height:1rem;margin:1px 4px}body.sidebar-refactoring .nav-sidebar li.active>a{font-weight:600}body.sidebar-refactoring .nav-sidebar li.active:not(.fly-out-top-item)>a:not(.has-sub-items){background-color:rgba(41,41,97,0.08)}body.sidebar-refactoring .nav-sidebar ul{padding-left:0;list-style:none}@media (max-width: 767.98px){body.sidebar-refactoring .nav-sidebar{left:-220px}}body.sidebar-refactoring .nav-sidebar .nav-icon-container{display:flex;margin-right:8px}body.sidebar-refactoring .nav-sidebar a:not(.has-sub-items)+.sidebar-sub-level-items .fly-out-top-item{display:none}body.sidebar-refactoring .nav-sidebar a:not(.has-sub-items)+.sidebar-sub-level-items .fly-out-top-item a,body.sidebar-refactoring .nav-sidebar a:not(.has-sub-items)+.sidebar-sub-level-items .fly-out-top-item.active a,body.sidebar-refactoring .nav-sidebar a:not(.has-sub-items)+.sidebar-sub-level-items .fly-out-top-item .fly-out-top-item-container{margin-left:0;margin-right:0;padding-left:1rem;padding-right:1rem;cursor:default;pointer-events:none;font-size:0.75rem;background-color:#2f2a6b;color:#fff;margin-top:-0.25rem;margin-bottom:-0.25rem;margin-top:0;position:relative;background-color:#000}body.sidebar-refactoring .nav-sidebar a:not(.has-sub-items)+.sidebar-sub-level-items .fly-out-top-item a strong,body.sidebar-refactoring .nav-sidebar a:not(.has-sub-items)+.sidebar-sub-level-items .fly-out-top-item.active a strong,body.sidebar-refactoring .nav-sidebar a:not(.has-sub-items)+.sidebar-sub-level-items .fly-out-top-item .fly-out-top-item-container strong{font-weight:400}body.sidebar-refactoring .nav-sidebar a:not(.has-sub-items)+.sidebar-sub-level-items .fly-out-top-item a::before,body.sidebar-refactoring .nav-sidebar a:not(.has-sub-items)+.sidebar-sub-level-items .fly-out-top-item.active a::before,body.sidebar-refactoring .nav-sidebar a:not(.has-sub-items)+.sidebar-sub-level-items .fly-out-top-item .fly-out-top-item-container::before{position:absolute;content:"";display:block;top:50%;left:-0.25rem;margin-top:-0.25rem;width:0;height:0;border-top:0.25rem solid transparent;border-bottom:0.25rem solid transparent;border-right:0.25rem solid #000}body.sidebar-refactoring .nav-sidebar a.has-sub-items+.sidebar-sub-level-items{margin-top:-0.25rem}body.sidebar-refactoring .nav-sidebar a.has-sub-items+.sidebar-sub-level-items .fly-out-top-item{display:none}body.sidebar-refactoring .nav-sidebar a.has-sub-items+.sidebar-sub-level-items .fly-out-top-item a,body.sidebar-refactoring .nav-sidebar a.has-sub-items+.sidebar-sub-level-items .fly-out-top-item.active a,body.sidebar-refactoring .nav-sidebar a.has-sub-items+.sidebar-sub-level-items .fly-out-top-item .fly-out-top-item-container{margin-left:0;margin-right:0;padding-left:1rem;padding-right:1rem;cursor:default;pointer-events:none;font-size:0.75rem;background-color:#2f2a6b;color:#fff;margin-top:0;border-bottom-left-radius:0;border-bottom-right-radius:0}@media (min-width: 768px) and (max-width: 1199px){body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile){width:48px}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .nav-sidebar-inner-scroll{overflow-x:hidden}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .badge.badge-pill:not(.fly-out-badge),body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .nav-item-name,body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .collapse-text{border:0;clip:rect(0, 0, 0, 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;white-space:nowrap;width:1px}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .sidebar-top-level-items>li>a{min-height:unset}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .fly-out-top-item:not(.divider){display:block !important}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .avatar-container{margin:0 auto}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) li.active:not(.fly-out-top-item)>a{background-color:rgba(41,41,97,0.08)}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .context-header{height:60px;width:48px}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .context-header a{padding:10px 4px}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .sidebar-context-title{border:0;clip:rect(0, 0, 0, 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;white-space:nowrap;width:1px}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .context-header{height:auto}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .context-header a{padding:0.25rem}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .sidebar-top-level-items>li .sidebar-sub-level-items:not(.flyout-list){display:none}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .nav-icon-container{margin-right:0}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .toggle-sidebar-button{width:48px}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .toggle-sidebar-button .collapse-text{display:none}body.sidebar-refactoring .nav-sidebar:not(.sidebar-expanded-mobile) .toggle-sidebar-button .icon-chevron-double-lg-left{transform:rotate(180deg);display:block;margin:0}}body.sidebar-refactoring .nav-sidebar-inner-scroll{height:100%;width:100%;overflow:auto}body.sidebar-refactoring .nav-sidebar-inner-scroll>div.context-header{margin-top:0.25rem}body.sidebar-refactoring .nav-sidebar-inner-scroll>div.context-header a{padding-left:0.75rem;padding-right:0.75rem;padding-top:0.5rem;padding-bottom:0.5rem;display:flex;align-items:center;border-radius:0.25rem;width:auto;line-height:1rem;margin:1px 4px;padding:0.25rem;margin-bottom:0.25rem;margin-top:0}body.sidebar-refactoring .nav-sidebar-inner-scroll>div.context-header a .avatar-container{font-weight:400;flex:none;box-shadow:inset 0 0 0 1px rgba(0,0,0,0.08)}body.sidebar-refactoring .nav-sidebar-inner-scroll>div.context-header a .avatar-container.rect-avatar{border-style:none}body.sidebar-refactoring .nav-sidebar-inner-scroll>div.context-header a .avatar-container.rect-avatar .avatar.s32{box-shadow:inset 0 0 0 1px rgba(0,0,0,0.08)}body.sidebar-refactoring .nav-sidebar-inner-scroll>div.context-header a .sidebar-context-title{color:#2f2a6b}body.sidebar-refactoring .sidebar-top-level-items{margin-top:0.25rem;margin-bottom:60px}body.sidebar-refactoring .sidebar-top-level-items .context-header a{padding:0.25rem;margin-bottom:0.25rem;margin-top:0}body.sidebar-refactoring .sidebar-top-level-items .context-header a .avatar-container{font-weight:400;flex:none;box-shadow:inset 0 0 0 1px rgba(0,0,0,0.08)}body.sidebar-refactoring .sidebar-top-level-items .context-header a .avatar-container.rect-avatar{border-style:none}body.sidebar-refactoring .sidebar-top-level-items .context-header a .avatar-container.rect-avatar .avatar.s32{box-shadow:inset 0 0 0 1px rgba(0,0,0,0.08)}body.sidebar-refactoring .sidebar-top-level-items .context-header a .sidebar-context-title{color:#2f2a6b}body.sidebar-refactoring .sidebar-top-level-items>li .badge.badge-pill{border-radius:0.5rem;padding-top:0.125rem;padding-bottom:0.125rem;padding-left:0.5rem;padding-right:0.5rem;background-color:#cbe2f9;color:#0b5cad}body.sidebar-refactoring .sidebar-top-level-items>li.active .sidebar-sub-level-items:not(.is-fly-out-only){display:block}body.sidebar-refactoring .sidebar-top-level-items>li.active .badge.badge-pill{font-weight:400;color:#0b5cad}body.sidebar-refactoring .sidebar-sub-level-items{padding-top:0;padding-bottom:0;display:none}body.sidebar-refactoring .sidebar-sub-level-items:not(.fly-out-list) li>a{padding-left:2.25rem}body.sidebar-refactoring .toggle-sidebar-button,body.sidebar-refactoring .close-nav-button{height:48px;padding:0 16px;background-color:#fafafa;border:0;color:#666;display:flex;align-items:center;background-color:#f0f0f0;border-top:1px solid #dbdbdb;color:#2f2a6b;position:fixed;bottom:0;width:220px}body.sidebar-refactoring .toggle-sidebar-button .collapse-text,body.sidebar-refactoring .toggle-sidebar-button .icon-chevron-double-lg-left,body.sidebar-refactoring .toggle-sidebar-button .icon-chevron-double-lg-right,body.sidebar-refactoring .close-nav-button .collapse-text,body.sidebar-refactoring .close-nav-button .icon-chevron-double-lg-left,body.sidebar-refactoring .close-nav-button .icon-chevron-double-lg-right{color:inherit}body.sidebar-refactoring .collapse-text{white-space:nowrap;overflow:hidden}body.sidebar-refactoring .sidebar-collapsed-desktop .context-header{height:60px;width:48px}body.sidebar-refactoring .sidebar-collapsed-desktop .context-header a{padding:10px 4px}body.sidebar-refactoring .sidebar-collapsed-desktop .sidebar-context-title{border:0;clip:rect(0, 0, 0, 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;white-space:nowrap;width:1px}body.sidebar-refactoring .sidebar-collapsed-desktop .context-header{height:auto}body.sidebar-refactoring .sidebar-collapsed-desktop .context-header a{padding:0.25rem}body.sidebar-refactoring .sidebar-collapsed-desktop .sidebar-top-level-items>li .sidebar-sub-level-items:not(.flyout-list){display:none}body.sidebar-refactoring .sidebar-collapsed-desktop .nav-icon-container{margin-right:0}body.sidebar-refactoring .sidebar-collapsed-desktop .toggle-sidebar-button{width:48px}body.sidebar-refactoring .sidebar-collapsed-desktop .toggle-sidebar-button .collapse-text{display:none}body.sidebar-refactoring .sidebar-collapsed-desktop .toggle-sidebar-button .icon-chevron-double-lg-left{transform:rotate(180deg);display:block;margin:0}body.sidebar-refactoring .close-nav-button{display:none}@media (max-width: 767.98px){body.sidebar-refactoring .close-nav-button{display:flex}body.sidebar-refactoring .toggle-sidebar-button{display:none}}input::-moz-placeholder{color:#868686;opacity:1}input::-ms-input-placeholder{color:#868686}input:-ms-input-placeholder{color:#868686}svg{fill:currentColor}svg.s12{width:12px;height:12px}svg.s16{width:16px;height:16px}svg.s18{width:18px;height:18px}svg.s32{width:32px;height:32px}svg.s12{vertical-align:-1px}svg.s16{vertical-align:-3px}.search{margin:0 8px}.search form{display:block;margin:0;padding:4px;width:200px;line-height:24px;height:32px;border:0;border-radius:4px}@media (min-width: 1200px){.search form{width:320px}}.search .search-input{border:0;font-size:14px;padding:0 20px 0 0;margin-left:5px;line-height:25px;width:98%;color:#fff;background:none}.search .search-input-container{display:flex;position:relative}.search .search-input-wrap{width:100%}.search .search-input-wrap .search-icon,.search .search-input-wrap .clear-icon{position:absolute;right:5px;top:4px}.search .search-input-wrap .search-icon{-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;user-select:none}.search .search-input-wrap .clear-icon{display:none}.search .search-input-wrap .dropdown{position:static}.search .search-input-wrap .dropdown-menu{left:-5px;max-height:400px;overflow:auto}@media (min-width: 1200px){.search .search-input-wrap .dropdown-menu{width:320px}}.search .identicon{flex-basis:16px;flex-shrink:0;margin-right:4px}.avatar,.avatar-container{float:left;margin-right:16px;border-radius:50%;border:1px solid #f5f5f5}.avatar.s16,.avatar-container.s16{width:16px;height:16px;margin-right:8px}.avatar.s18,.avatar-container.s18{width:18px;height:18px;margin-right:8px}.avatar.s32,.avatar-container.s32{width:32px;height:32px;margin-right:8px}.avatar.s40,.avatar-container.s40{width:40px;height:40px;margin-right:8px}.avatar{transition-property:none;width:40px;height:40px;padding:0;background:#fdfdfd;overflow:hidden;border-color:rgba(0,0,0,0.1)}.avatar.avatar-tile{border-radius:0;border:0}.identicon{text-align:center;vertical-align:top;color:#525252;background-color:#eee}.identicon.s16{font-size:10px;line-height:16px}.identicon.s32{font-size:14px;line-height:32px}.identicon.s40{font-size:16px;line-height:38px}.identicon.bg1{background-color:#ffebee}.identicon.bg2{background-color:#f3e5f5}.identicon.bg3{background-color:#e8eaf6}.identicon.bg4{background-color:#e3f2fd}.identicon.bg5{background-color:#e0f2f1}.identicon.bg6{background-color:#fbe9e7}.identicon.bg7{background-color:#eee}.avatar-container{overflow:hidden;display:flex}.avatar-container a{width:100%;height:100%;display:flex;text-decoration:none}.avatar-container .avatar{border-radius:0;border:0;height:auto;width:100%;margin:0;align-self:center}.avatar-container.s40{min-width:40px;min-height:40px}.rect-avatar{border-radius:2px}.rect-avatar.s16{border-radius:2px}.rect-avatar.s18{border-radius:2px}.rect-avatar.s32,body.sidebar-refactoring .nav-sidebar-inner-scroll>div.context-header a .avatar-container.rect-avatar .avatar.s32,body.sidebar-refactoring .sidebar-top-level-items .context-header a .avatar-container.rect-avatar .avatar.s32{border-radius:4px}.rect-avatar.s40{border-radius:4px}.tab-width-8{-moz-tab-size:8;tab-size:8}.gl-sr-only{border:0;clip:rect(0, 0, 0, 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;white-space:nowrap;width:1px}.gl-border-none\!{border-style:none !important}.gl-display-none{display:none}@media (min-width: 36rem){.gl-sm-display-block{display:block}}.gl-absolute{position:absolute}.gl-px-3{padding-left:0.5rem;padding-right:0.5rem}.gl-pr-2{padding-right:0.25rem}.gl-ml-3{margin-left:0.5rem}.gl-mx-0\!{margin-left:0 !important;margin-right:0 !important}.gl-font-sm{font-size:0.75rem}.gl-font-weight-bold{font-weight:600}.content-wrapper>.alert-wrapper,#content-body,.modal-dialog{display:none}

</style>

<link rel="stylesheet" media="print" href="/assets/application-515dc29796a763b500d37ec0c765957a136c9e1f1972bb52c3d7edcf4b6b8bbe.css" />

<link rel="stylesheet" media="print" href="/assets/application_utilities-ed03084a178c77a52b2c6696dbcb0db9445a985c0a98f1c48d36374df7953067.css" />


<link rel="stylesheet" media="print" href="/assets/highlight/themes/white-3dc16a1a591e4b4ebf0a3b185f2a92790dada139f107cde1bcb5fa03a563b0c6.css" />
<script>
//<![CDATA[
document.querySelectorAll('link[media="print"]').forEach(linkTag => {
  linkTag.setAttribute('data-startupcss', 'loading');
  const startupLinkLoadedEvent = new CustomEvent('CSSStartupLinkLoaded');
  linkTag.addEventListener('load',function(){this.media='all';this.setAttribute('data-startupcss', 'loaded');document.dispatchEvent(startupLinkLoadedEvent);},{once: true});
})

//]]>
</script>

<script>
//<![CDATA[
window.gon={};gon.api_version="v4";gon.default_avatar_url="https://asu.bootcampcontent.com/assets/no_avatar-849f9c04a3a0d0cea2424ae97b27447dc64a7dbfae83c036c45b403392f0e8ba.png";gon.max_file_size=10;gon.asset_host=null;gon.webpack_public_path="/assets/webpack/";gon.relative_url_root="";gon.user_color_scheme="white";gon.markdown_surround_selection=true;gon.gitlab_url="https://asu.bootcampcontent.com";gon.revision="b044f06e4dd";gon.gitlab_logo="/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png";gon.sprite_icons="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg";gon.sprite_file_icons="/assets/file_icons-c13caf2f3ca00cc2c02b11d373ac288c200b9b4dcddbb52a5027dc07b3eece19.svg";gon.emoji_sprites_css_path="/assets/emoji_sprites-3825d771ad697b27553bcece6c17a12969dd7407cf0fe3897aad012efc0bf827.css";gon.select2_css_path="/assets/lazy_bundles/select2-718700608a42cbeb8139cf2277773fe17c47e05624e5a773f3509fca1408a56d.css";gon.test_env=false;gon.disable_animations=null;gon.suggested_label_colors={"#009966":"Green-cyan","#8fbc8f":"Dark sea green","#3cb371":"Medium sea green","#00b140":"Green screen","#013220":"Dark green","#6699cc":"Blue-gray","#0000ff":"Blue","#e6e6fa":"Lavendar","#9400d3":"Dark violet","#330066":"Deep violet","#808080":"Gray","#36454f":"Charcoal grey","#f7e7ce":"Champagne","#c21e56":"Rose red","#cc338b":"Magenta-pink","#dc143c":"Crimson","#ff0000":"Red","#cd5b45":"Dark coral","#eee600":"Titanium yellow","#ed9121":"Carrot orange","#c39953":"Aztec Gold"};gon.first_day_of_week=0;gon.ee=true;gon.dot_com=false;gon.current_user_id=244;gon.current_username="Doobe";gon.current_user_fullname="Joey Nguyen";gon.current_user_avatar_url="https://secure.gravatar.com/avatar/7deef85c87795a13e4c93aa91e5abd22?s=80\u0026d=identicon";gon.features={"snippetsBinaryBlob":false,"usageDataApi":true,"securityAutoFix":false,"improvedEmojiPicker":true,"refactorBlobViewer":false,"consolidatedEditButton":false};gon.roadmap_epics_limit=1000;
//]]>
</script>




<script src="/assets/webpack/runtime.5d534c6e.bundle.js" defer="defer"></script>
<script src="/assets/webpack/main.4a183906.chunk.js" defer="defer"></script>
<script src="/assets/webpack/graphql.0a3cd4b9.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.admin-pages.admin.abuse_reports-pages.admin.application_settings-pages.admin.applicati-10513902.3af3379e.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-globalSearch-pages.admin.abuse_reports-pages.admin.application_settings.ci_cd-pages.admin.gr-f196c612.9923dc50.chunk.js" defer="defer"></script>
<script src="/assets/webpack/shortcutsBundle.cd11fec4.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.groups.boards-pages.groups.details-pages.groups.epic_boards-pages.groups.show-pages.gr-b80e3f95.b51516dc.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.admin.application_settings-pages.admin.application_settings.advanced_search-pages.admi-58b90e05.052ab5cb.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.groups.epics.index-pages.groups.epics.new-pages.groups.epics.show-pages.groups.iterati-7a97ebd5.bd3afbe1.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.blame.show-pages.projects.blob.edit-pages.projects.blob.new-pages.projects.bl-d63c8603.05c636ae.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.show-pages.projects.snippets.show-pages.projects.tre-c684fcf6.40d40373.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.show-pages.projects.tree.show.3c8bc402.chunk.js" defer="defer"></script>
<script src="/assets/webpack/commons-pages.projects.blob.show-pages.projects.commits.show-pages.projects.compare.show.8725ebe1.chunk.js" defer="defer"></script>
<script src="/assets/webpack/pages.projects.blob.show.272be969.chunk.js" defer="defer"></script>
<script>
//<![CDATA[
window.uploads_path = "/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/uploads";



//]]>
</script>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="GIOde+Sxx1R5u87oPwYbHd2pUmQK5BO7G1rmXZ/3IRz+VwDtnEXwOGu5eUU+Xo71pzGJhe2zPK5cZmVjLPwo1w==" />
<meta name="csp-nonce" />
<meta name="action-cable-url" content="/-/cable" />
<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
<meta content="#292961" name="theme-color">
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-iphone-5a9cee0e8a51212e70b90c87c12f382c428870c0ff67d1eb034d884b78d2dae7.png" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-ipad-a6eec6aeb9da138e507593b464fdac213047e49d3093fc30e90d9a995df83ba3.png" sizes="76x76" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-iphone-retina-72e2aadf86513a56e050e7f0f2355deaa19cc17ed97bbe5147847f2748e5a3e3.png" sizes="120x120" />
<link rel="apple-touch-icon" type="image/x-icon" href="/assets/touch-icon-ipad-retina-8ebe416f5313483d9c1bc772b5bbe03ecad52a54eba443e5215a22caed2a16a2.png" sizes="152x152" />
<link color="rgb(226, 67, 41)" href="/assets/logo-d36b5212042cebc89b96df4bf6ac24e43db316143e89926c0db839ff694d2de4.svg" rel="mask-icon">
<link href="/search/opensearch.xml" rel="search" title="Search GitLab" type="application/opensearchdescription+xml">
<meta content="/assets/msapplication-tile-1196ec67452f618d39cdd85e2e3a542f76574c071051ae7effbfde01710eb17d.png" name="msapplication-TileImage">
<meta content="#30353E" name="msapplication-TileColor">




</head>

<body class="ui-indigo tab-width-8 gl-browser-chrome gl-platform-windows sidebar-refactoring" data-find-file="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/find_file/master" data-group="asu-coding-bootcamp" data-namespace-id="3" data-page="projects:blob:show" data-page-type-id="master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh" data-project="asu-virt-cyber-pt-06-2021-u-lol" data-project-id="40">

<script>
//<![CDATA[
gl = window.gl || {};
gl.client = {"isChrome":true,"isWindows":true};


//]]>
</script>


<header class="navbar navbar-gitlab navbar-expand-sm js-navbar" data-qa-selector="navbar">
<a class="gl-sr-only gl-accessibility" href="#content-body">Skip to content</a>
<div class="container-fluid">
<div class="header-content">
<div class="title-container hide-when-menu-expanded">
<h1 class="title">
<span class="gl-sr-only">GitLab</span>
<a title="Dashboard" id="logo" href="/"><svg width="24" height="24" class="tanuki-logo" viewBox="0 0 36 36">
  <path class="tanuki-shape tanuki-left-ear" fill="#e24329" d="M2 14l9.38 9v-9l-4-12.28c-.205-.632-1.176-.632-1.38 0z"/>
  <path class="tanuki-shape tanuki-right-ear" fill="#e24329" d="M34 14l-9.38 9v-9l4-12.28c.205-.632 1.176-.632 1.38 0z"/>
  <path class="tanuki-shape tanuki-nose" fill="#e24329" d="M18,34.38 3,14 33,14 Z"/>
  <path class="tanuki-shape tanuki-left-eye" fill="#fc6d26" d="M18,34.38 11.38,14 2,14 6,25Z"/>
  <path class="tanuki-shape tanuki-right-eye" fill="#fc6d26" d="M18,34.38 24.62,14 34,14 30,25Z"/>
  <path class="tanuki-shape tanuki-left-cheek" fill="#fca326" d="M2 14L.1 20.16c-.18.565 0 1.2.5 1.56l17.42 12.66z"/>
  <path class="tanuki-shape tanuki-right-cheek" fill="#fca326" d="M34 14l1.9 6.16c.18.565 0 1.2-.5 1.56L18 34.38z"/>
</svg>

<span class="logo-text d-none d-lg-block gl-ml-3">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 617 169"><path d="M315.26 2.97h-21.8l.1 162.5h88.3v-20.1h-66.5l-.1-142.4M465.89 136.95c-5.5 5.7-14.6 11.4-27 11.4-16.6 0-23.3-8.2-23.3-18.9 0-16.1 11.2-23.8 35-23.8 4.5 0 11.7.5 15.4 1.2v30.1h-.1m-22.6-98.5c-17.6 0-33.8 6.2-46.4 16.7l7.7 13.4c8.9-5.2 19.8-10.4 35.5-10.4 17.9 0 25.8 9.2 25.8 24.6v7.9c-3.5-.7-10.7-1.2-15.1-1.2-38.2 0-57.6 13.4-57.6 41.4 0 25.1 15.4 37.7 38.7 37.7 15.7 0 30.8-7.2 36-18.9l4 15.9h15.4v-83.2c-.1-26.3-11.5-43.9-44-43.9M557.63 149.1c-8.2 0-15.4-1-20.8-3.5V70.5c7.4-6.2 16.6-10.7 28.3-10.7 21.1 0 29.2 14.9 29.2 39 0 34.2-13.1 50.3-36.7 50.3m9.2-110.6c-19.5 0-30 13.3-30 13.3v-21l-.1-27.8h-21.3l.1 158.5c10.7 4.5 25.3 6.9 41.2 6.9 40.7 0 60.3-26 60.3-70.9-.1-35.5-18.2-59-50.2-59M77.9 20.6c19.3 0 31.8 6.4 39.9 12.9l9.4-16.3C114.5 6 97.3 0 78.9 0 32.5 0 0 28.3 0 85.4c0 59.8 35.1 83.1 75.2 83.1 20.1 0 37.2-4.7 48.4-9.4l-.5-63.9V75.1H63.6v20.1h38l.5 48.5c-5 2.5-13.6 4.5-25.3 4.5-32.2 0-53.8-20.3-53.8-63-.1-43.5 22.2-64.6 54.9-64.6M231.43 2.95h-21.3l.1 27.3v94.3c0 26.3 11.4 43.9 43.9 43.9 4.5 0 8.9-.4 13.1-1.2v-19.1c-3.1.5-6.4.7-9.9.7-17.9 0-25.8-9.2-25.8-24.6v-65h35.7v-17.8h-35.7l-.1-38.5M155.96 165.47h21.3v-124h-21.3v124M155.96 24.37h21.3V3.07h-21.3v21.3"/></svg>

</span>
</a></h1>
<div class="gl-display-none gl-sm-display-block">
<ul class="list-unstyled navbar-sub-nav" data-view-model="{&quot;primary&quot;:[{&quot;id&quot;:&quot;project&quot;,&quot;title&quot;:&quot;Projects&quot;,&quot;active&quot;:true,&quot;icon&quot;:&quot;project&quot;,&quot;href&quot;:&quot;&quot;,&quot;view&quot;:&quot;projects&quot;,&quot;css_class&quot;:&quot;qa-projects-dropdown&quot;,&quot;data&quot;:{&quot;track_label&quot;:&quot;projects_dropdown&quot;,&quot;track_event&quot;:&quot;click_dropdown&quot;,&quot;track_experiment&quot;:&quot;new_repo&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;groups&quot;,&quot;title&quot;:&quot;Groups&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;group&quot;,&quot;href&quot;:&quot;&quot;,&quot;view&quot;:&quot;groups&quot;,&quot;css_class&quot;:&quot;qa-groups-dropdown&quot;,&quot;data&quot;:{&quot;track_label&quot;:&quot;groups_dropdown&quot;,&quot;track_event&quot;:&quot;click_dropdown&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;milestones&quot;,&quot;title&quot;:&quot;Milestones&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;clock&quot;,&quot;href&quot;:&quot;/dashboard/milestones&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;milestones_link&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;snippets&quot;,&quot;title&quot;:&quot;Snippets&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;snippet&quot;,&quot;href&quot;:&quot;/dashboard/snippets&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;snippets_link&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;activity&quot;,&quot;title&quot;:&quot;Activity&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;history&quot;,&quot;href&quot;:&quot;/dashboard/activity&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;activity_link&quot;},&quot;emoji&quot;:null}],&quot;secondary&quot;:[],&quot;views&quot;:{&quot;projects&quot;:{&quot;namespace&quot;:&quot;projects&quot;,&quot;currentUserName&quot;:&quot;Doobe&quot;,&quot;currentItem&quot;:{&quot;id&quot;:40,&quot;name&quot;:&quot;ASU-VIRT-CYBER-PT-06-2021-U-LOL&quot;,&quot;namespace&quot;:&quot;ASU-Coding-Bootcamp / ASU-VIRT-CYBER-PT-06-2021-U-LOL&quot;,&quot;webUrl&quot;:&quot;/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol&quot;,&quot;avatarUrl&quot;:null},&quot;linksPrimary&quot;:[{&quot;id&quot;:&quot;your&quot;,&quot;title&quot;:&quot;Your projects&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/projects&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Your projects&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;starred&quot;,&quot;title&quot;:&quot;Starred projects&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/projects/starred&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Starred projects&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;explore&quot;,&quot;title&quot;:&quot;Explore projects&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/explore&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Explore projects&quot;},&quot;emoji&quot;:null}],&quot;linksSecondary&quot;:[{&quot;id&quot;:&quot;create&quot;,&quot;title&quot;:&quot;Create new project&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/projects/new&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Create new project&quot;},&quot;emoji&quot;:null}]},&quot;groups&quot;:{&quot;namespace&quot;:&quot;groups&quot;,&quot;currentUserName&quot;:&quot;Doobe&quot;,&quot;currentItem&quot;:{},&quot;linksPrimary&quot;:[{&quot;id&quot;:&quot;your&quot;,&quot;title&quot;:&quot;Your groups&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/groups&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Your groups&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;explore&quot;,&quot;title&quot;:&quot;Explore groups&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/explore/groups&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Explore groups&quot;},&quot;emoji&quot;:null}],&quot;linksSecondary&quot;:[{&quot;id&quot;:&quot;create&quot;,&quot;title&quot;:&quot;Create group&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/groups/new&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Create group&quot;},&quot;emoji&quot;:null}]}},&quot;shortcuts&quot;:[{&quot;id&quot;:&quot;project-shortcut&quot;,&quot;title&quot;:&quot;Projects&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/projects&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-projects&quot;,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Projects&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;groups-shortcut&quot;,&quot;title&quot;:&quot;Groups&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/groups&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-groups&quot;,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Groups&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;milestones-shortcut&quot;,&quot;title&quot;:&quot;Milestones&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/milestones&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-milestones&quot;,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Milestones&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;snippets-shortcut&quot;,&quot;title&quot;:&quot;Snippets&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/snippets&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-snippets&quot;,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Snippets&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;activity-shortcut&quot;,&quot;title&quot;:&quot;Activity&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/activity&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-activity&quot;,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Activity&quot;},&quot;emoji&quot;:null}],&quot;activeTitle&quot;:&quot;Menu&quot;}" id="js-top-nav">
<li>
<a class="top-nav-toggle" data-toggle="dropdown" href="#" type="button">
<svg class="s16 dropdown-icon" data-testid="hamburger-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#hamburger"></use></svg>
Menu
</a>
</li>
</ul>
<div class="hidden">
<a class="dashboard-shortcuts-projects" href="/dashboard/projects">Projects
</a><a class="dashboard-shortcuts-groups" href="/dashboard/groups">Groups
</a><a class="dashboard-shortcuts-milestones" href="/dashboard/milestones">Milestones
</a><a class="dashboard-shortcuts-snippets" href="/dashboard/snippets">Snippets
</a><a class="dashboard-shortcuts-activity" href="/dashboard/activity">Activity
</a></div>

</div>
</div>
<div class="navbar-collapse collapse">
<ul class="nav navbar-nav">
<li class="header-new dropdown gl-display-none gl-sm-display-block" data-track-event="click_dropdown" data-track-experiment="new_repo" data-track-label="new_dropdown">
<a class="header-new-dropdown-toggle has-tooltip" id="js-onboarding-new-project-link" title="New..." ref="tooltip" aria-label="New..." data-toggle="dropdown" data-placement="bottom" data-container="body" data-display="static" data-qa-selector="new_menu_toggle" href="/projects/new"><svg class="s16" data-testid="plus-square-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#plus-square"></use></svg>
<svg class="s16 caret-down" data-testid="chevron-down-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#chevron-down"></use></svg>
</a><div class="dropdown-menu dropdown-menu-right dropdown-extended-height">
<ul>
<li class="dropdown-bold-header">
This project
</li>
<li><a data-track-event="click_link_new_issue" data-track-label="plus_menu_dropdown" data-qa-selector="new_issue_link" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/issues/new">New issue</a></li>
<li><a data-track-event="click_link_new_snippet_project" data-track-label="plus_menu_dropdown" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/snippets/new">New snippet</a></li>
<li class="divider"></li>
<li class="dropdown-bold-header">
GitLab
</li>
<li><a data-track-experiment="new_repo" data-track-event="click_link_new_project" data-track-label="plus_menu_dropdown" data-qa-selector="global_new_project_link" href="/projects/new">New project</a></li>
<li><a data-track-event="click_link_new_group" data-track-label="plus_menu_dropdown" href="/groups/new">New group</a></li>
<li><a data-track-event="click_link_new_snippet_parent" data-track-label="plus_menu_dropdown" data-qa-selector="global_new_snippet_link" href="/-/snippets/new">New snippet</a></li>
</ul>
</div>
</li>

<li class="nav-item d-none d-lg-block m-auto">
<div class="search search-form" data-track-event="activate_form_input" data-track-label="navbar_search" data-track-value="">
<form class="form-inline form-control" action="/search" accept-charset="UTF-8" method="get"><div class="search-input-container">
<div class="search-input-wrap">
<div class="dropdown" data-url="/search/autocomplete">
<input type="search" name="search" id="search" placeholder="Search or jump to…" class="search-input dropdown-menu-toggle no-outline js-search-dashboard-options" spellcheck="false" autocomplete="off" data-issues-path="/dashboard/issues" data-mr-path="/dashboard/merge_requests" data-qa-selector="search_term_field" aria-label="Search or jump to…" />
<button class="hidden js-dropdown-search-toggle" data-toggle="dropdown" type="button"></button>
<div class="dropdown-menu dropdown-select" data-testid="dashboard-search-options">
<div class="dropdown-content"><ul>
<li class="dropdown-menu-empty-item">
<a>
Loading...
</a>
</li>
</ul>
</div><div class="dropdown-loading"><div class="gl-spinner-container"><span class="gl-spinner gl-spinner-orange gl-spinner-md gl-mt-7" aria-label="Loading"></span></div></div>
</div>
<svg class="s16 search-icon" data-testid="search-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#search"></use></svg>
<svg class="s16 clear-icon js-clear-input" data-testid="close-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#close"></use></svg>
</div>
</div>
</div>
<input type="hidden" name="group_id" id="group_id" value="3" class="js-search-group-options" data-group-path="asu-coding-bootcamp" data-name="ASU-Coding-Bootcamp" data-issues-path="/groups/asu-coding-bootcamp/-/issues" data-mr-path="/groups/asu-coding-bootcamp/-/merge_requests" />
<input type="hidden" name="project_id" id="search_project_id" value="40" class="js-search-project-options" data-project-path="asu-virt-cyber-pt-06-2021-u-lol" data-name="ASU-VIRT-CYBER-PT-06-2021-U-LOL" data-issues-path="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/issues" data-mr-path="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/merge_requests" data-issues-disabled="false" />
<input type="hidden" name="scope" id="scope" />
<input type="hidden" name="search_code" id="search_code" value="true" />
<input type="hidden" name="snippets" id="snippets" value="false" />
<input type="hidden" name="repository_ref" id="repository_ref" value="master" />
<input type="hidden" name="nav_source" id="nav_source" value="navbar" />
<div class="search-autocomplete-opts hide" data-autocomplete-path="/search/autocomplete" data-autocomplete-project-id="40" data-autocomplete-project-ref="master"></div>
</form></div>

</li>
<li class="nav-item d-none d-sm-inline-block d-lg-none">
<a title="Search" aria-label="Search" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/search?project_id=40"><svg class="s16" data-testid="search-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#search"></use></svg>
</a></li>
<li class="user-counter"><a title="Issues" class="dashboard-shortcuts-issues" aria-label="Issues" data-qa-selector="issues_shortcut_button" data-toggle="tooltip" data-placement="bottom" data-track-label="main_navigation" data-track-event="click_issues_link" data-track-property="navigation" data-container="body" href="/dashboard/issues?assignee_username=Doobe"><svg class="s16" data-testid="issues-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#issues"></use></svg>
<span class="badge badge-pill issues-count green-badge hidden">
0
</span>
</a></li><li class="user-counter dropdown"><a class="dashboard-shortcuts-merge_requests" title="Merge requests" aria-label="Merge requests" data-qa-selector="merge_requests_shortcut_button" data-toggle="dropdown" data-placement="bottom" data-track-label="main_navigation" data-track-event="click_merge_link" data-track-property="navigation" data-container="body" href="/dashboard/merge_requests?assignee_username=Doobe"><svg class="s16" data-testid="git-merge-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#git-merge"></use></svg>
<span class="badge badge-pill merge-requests-count js-merge-requests-count hidden">
0
</span>
<svg class="s16 caret-down gl-mx-0!" data-testid="chevron-down-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#chevron-down"></use></svg>
</a><div class="dropdown-menu dropdown-menu-right">
<ul>
<li class="dropdown-header">
Merge requests
</li>
<li>
<a class="gl-display-flex! gl-align-items-center" href="/dashboard/merge_requests?assignee_username=Doobe">Assigned to you
<span class="badge gl-badge badge-pill badge-muted merge-request-badge gl-ml-auto js-assigned-mr-count">
0
</span>
</a></li>
<li>
<a class="gl-display-flex! gl-align-items-center" href="/dashboard/merge_requests?reviewer_username=Doobe">Review requests for you
<span class="badge gl-badge badge-pill badge-muted merge-request-badge gl-ml-auto js-reviewer-mr-count">
0
</span>
</a></li>
</ul>
</div>
</li><li class="user-counter"><a title="To-Do List" aria-label="To-Do List" class="shortcuts-todos" data-qa-selector="todos_shortcut_button" data-toggle="tooltip" data-placement="bottom" data-track-label="main_navigation" data-track-event="click_to_do_link" data-track-property="navigation" data-container="body" href="/dashboard/todos"><svg class="s16" data-testid="todo-done-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#todo-done"></use></svg>
<span class="badge badge-pill todos-count js-todos-count hidden">
0
</span>
</a></li><li class="nav-item header-help dropdown d-none d-md-block">
<a class="header-help-dropdown-toggle" data-toggle="dropdown" href="/help"><span class="gl-sr-only">
Help
</span>
<svg class="s16" data-testid="question-o-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#question-o"></use></svg>
<span class="notification-dot rounded-circle gl-absolute"></span>
<svg class="s16 caret-down" data-testid="chevron-down-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#chevron-down"></use></svg>
</a><div class="dropdown-menu dropdown-menu-right">
<ul>
<li>
<button class="gl-justify-content-space-between gl-align-items-center js-whats-new-trigger gl-display-flex!" type="button">
What&#39;s new
<span class="js-whats-new-notification-count gl-badge badge sm badge-dark badge-pill">
12
</span>
</button>
</li>

<li>
<a href="/help">Help</a>
</li>
<li>
<a href="https://about.gitlab.com/getting-help/">Support</a>
</li>
<li>
<a target="_blank" class="text-nowrap" rel="noopener noreferrer" data-track-event="click_forum" data-track-property="question_menu" href="https://forum.gitlab.com/">Community forum</a>

</li>
<li>
<button class="js-shortcuts-modal-trigger" type="button">
Keyboard shortcuts
<span aria-hidden="true" class="text-secondary float-right">?</span>
</button>
</li>
<li class="divider"></li>
<li>
<a href="https://about.gitlab.com/submit-feedback">Submit feedback</a>
</li>
<li>

</li>

</ul>

</div>
</li>
<li class="nav-item header-user js-nav-user-dropdown dropdown" data-qa-selector="user_menu" data-track-event="click_dropdown" data-track-label="profile_dropdown" data-track-value="">
<a class="header-user-dropdown-toggle" data-toggle="dropdown" href="/Doobe"><img width="23" height="23" class="header-user-avatar qa-user-avatar lazy" alt="Joey Nguyen" data-src="https://secure.gravatar.com/avatar/7deef85c87795a13e4c93aa91e5abd22?s=46&amp;d=identicon" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" />

<svg class="s16 caret-down" data-testid="chevron-down-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#chevron-down"></use></svg>
</a><div class="dropdown-menu dropdown-menu-right">
<ul>
<li class="current-user">
<a class="gl-line-height-20!" data-user="Doobe" data-testid="user-profile-link" data-qa-selector="user_profile_link" href="/Doobe"><div class="gl-font-weight-bold">
Joey Nguyen
</div>
@Doobe

</a></li>
<li class="divider"></li>
<li>
<button class="gl-button btn btn-link menu-item js-set-status-modal-trigger" type="button">
Set status
</button>
</li>
<li>
<a data-qa-selector="edit_profile_link" href="/-/profile">Edit profile</a>
</li>
<li>
<a href="/-/profile/preferences">Preferences</a>
</li>


<li class="divider d-md-none"></li>
<li class="d-md-none">
<a href="/help">Help</a>
</li>
<li class="d-md-none">
<a href="https://about.gitlab.com/getting-help/">Support</a>
</li>
<li class="d-md-none">
<a target="_blank" class="text-nowrap" rel="noopener noreferrer" data-track-event="click_forum" data-track-property="question_menu" href="https://forum.gitlab.com/">Community forum</a>

</li>
<li class="d-md-none">
<a href="https://about.gitlab.com/submit-feedback">Submit feedback</a>
</li>
<li class="d-md-none">

</li>

<li class="divider"></li>
<li>
<a class="sign-out-link" data-qa-selector="sign_out_link" rel="nofollow" data-method="post" href="/users/sign_out">Sign out</a>
</li>
</ul>

</div>
</li>
</ul>
</div>
<button class="navbar-toggler d-block d-sm-none gl-border-none!" type="button">
<span class="sr-only">Toggle navigation</span>
<span class="more-icon gl-px-3 gl-font-sm gl-font-weight-bold">
<span class="gl-pr-2">Menu</span>
<svg class="s16" data-testid="hamburger-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#hamburger"></use></svg>
</span>
<svg class="s12 close-icon" data-testid="close-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#close"></use></svg>
</button>
</div>
</div>
</header>
<div data-version-digest="65cebb6f370f68502d4af051143fcd0def5afa569cf0176964bdf95bdf1ce5f1" id="whats-new-app"></div>
<div class="js-set-status-modal-wrapper" data-current-emoji="" data-current-message="" data-default-emoji="speech_balloon"></div>

<div class="layout-page hide-when-top-nav-responsive-open page-with-contextual-sidebar">
<aside aria-label="Project navigation" class="nav-sidebar">
<div class="nav-sidebar-inner-scroll">
<ul class="sidebar-top-level-items qa-project-sidebar">
<li data-track-label="scope_menu" class="context-header"><a aria-label="ASU-VIRT-CYBER-PT-06-2021-U-LOL" class="shortcuts-project rspec-project-link" data-qa-selector="project_scope_link" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol"><span class="avatar-container rect-avatar project-avatar s32">
<span class="avatar avatar-tile s32 identicon bg6">A</span>
</span>
<span class="sidebar-context-title">
ASU-VIRT-CYBER-PT-06-2021-U-LOL
</span>
</a>
</li>
<li data-track-label="project_information_menu" class="home"><a aria-label="Project information" class="shortcuts-project-information has-sub-items" data-qa-selector="sidebar_menu_link" data-qa-menu-item="Project information" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/activity"><span class="nav-icon-container">
<svg class="s16" data-testid="project-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#project"></use></svg>
</span>
<span class="nav-item-name">
Project information
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><span class="fly-out-top-item-container">
<strong class="fly-out-top-item-name">
Project information
</strong>

</span>
</li><li class="divider fly-out-top-item"></li>
<li data-track-label="activity" class=""><a aria-label="Activity" class="shortcuts-project-activity" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Activity" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/activity"><span>
Activity
</span>
</a></li><li data-track-label="labels" class=""><a aria-label="Labels" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Labels" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/labels"><span>
Labels
</span>
</a></li><li data-track-label="members" class=""><a aria-label="Members" id="js-onboarding-members-link" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Members" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/project_members"><span>
Members
</span>
</a></li>
</ul>
</li><li data-track-label="repository_menu" class="active"><a aria-label="Repository" class="shortcuts-tree has-sub-items" data-qa-selector="sidebar_menu_link" data-qa-menu-item="Repository" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/tree/master"><span class="nav-icon-container">
<svg class="s16" data-testid="doc-text-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#doc-text"></use></svg>
</span>
<span class="nav-item-name" id="js-onboarding-repo-link">
Repository
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item active"><span class="fly-out-top-item-container">
<strong class="fly-out-top-item-name">
Repository
</strong>

</span>
</li><li class="divider fly-out-top-item"></li>
<li data-track-label="files" class="active"><a aria-label="Files" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Files" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/tree/master"><span>
Files
</span>
</a></li><li data-track-label="commits" class=""><a aria-label="Commits" id="js-onboarding-commits-link" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Commits" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/commits/master"><span>
Commits
</span>
</a></li><li data-track-label="branches" class=""><a aria-label="Branches" id="js-onboarding-branches-link" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Branches" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/branches"><span>
Branches
</span>
</a></li><li data-track-label="tags" class=""><a aria-label="Tags" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Tags" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/tags"><span>
Tags
</span>
</a></li><li data-track-label="contributors" class=""><a aria-label="Contributors" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Contributors" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/graphs/master"><span>
Contributors
</span>
</a></li><li data-track-label="graphs" class=""><a aria-label="Graph" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Graph" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/network/master"><span>
Graph
</span>
</a></li><li data-track-label="compare" class=""><a aria-label="Compare" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Compare" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/compare?from=master&amp;to=master"><span>
Compare
</span>
</a></li>
</ul>
</li><li data-track-label="issues_menu" class=""><a aria-label="Issues" class="shortcuts-issues has-sub-items" data-qa-selector="sidebar_menu_link" data-qa-menu-item="Issues" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/issues"><span class="nav-icon-container">
<svg class="s16" data-testid="issues-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#issues"></use></svg>
</span>
<span class="nav-item-name" id="js-onboarding-issues-link">
Issues
</span>
<span class="badge badge-pill count issue_counter">
0
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><span class="fly-out-top-item-container">
<strong class="fly-out-top-item-name">
Issues
</strong>
<span class="badge badge-pill count fly-out-badge issue_counter">
0
</span>

</span>
</li><li class="divider fly-out-top-item"></li>
<li data-track-label="issue_list" class=""><a aria-label="Issues" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="List" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/issues"><span>
List
</span>
</a></li><li data-track-label="boards" class=""><a aria-label="Boards" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Boards" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/boards"><span>
Boards
</span>
</a></li><li data-track-label="service_desk" class=""><a aria-label="Service Desk" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Service Desk" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/issues/service_desk"><span>
Service Desk
</span>
</a></li><li data-track-label="milestones" class=""><a aria-label="Milestones" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Milestones" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/milestones"><span>
Milestones
</span>
</a></li>
</ul>
</li><li data-track-label="merge_requests_menu" class=""><a aria-label="Merge requests" class="shortcuts-merge_requests" data-qa-selector="sidebar_menu_link" data-qa-menu-item="Merge requests" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/merge_requests"><span class="nav-icon-container">
<svg class="s16" data-testid="git-merge-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#git-merge"></use></svg>
</span>
<span class="nav-item-name" id="js-onboarding-mr-link">
Merge requests
</span>
<span class="badge badge-pill count merge_counter js-merge-counter">
0
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><span class="fly-out-top-item-container">
<strong class="fly-out-top-item-name">
Merge requests
</strong>
<span class="badge badge-pill count fly-out-badge merge_counter js-merge-counter">
0
</span>

</span>
</li></ul>
</li><li data-track-label="ci_cd_menu" class=""><a aria-label="CI/CD" class="shortcuts-pipelines rspec-link-pipelines has-sub-items" data-qa-selector="sidebar_menu_link" data-qa-menu-item="CI/CD" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/pipelines"><span class="nav-icon-container">
<svg class="s16" data-testid="rocket-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#rocket"></use></svg>
</span>
<span class="nav-item-name" id="js-onboarding-pipelines-link">
CI/CD
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><span class="fly-out-top-item-container">
<strong class="fly-out-top-item-name">
CI/CD
</strong>

</span>
</li><li class="divider fly-out-top-item"></li>
<li data-track-label="pipelines" class=""><a aria-label="Pipelines" class="shortcuts-pipelines" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Pipelines" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/pipelines"><span>
Pipelines
</span>
</a></li><li data-track-label="jobs" class=""><a aria-label="Jobs" class="shortcuts-builds" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Jobs" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/jobs"><span>
Jobs
</span>
</a></li><li data-track-label="pipeline_schedules" class=""><a aria-label="Schedules" class="shortcuts-builds" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Schedules" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/pipeline_schedules"><span>
Schedules
</span>
</a></li>
</ul>
</li><li data-track-label="deployments_menu" class=""><a aria-label="Deployments" class="shortcuts-deployments has-sub-items" data-qa-selector="sidebar_menu_link" data-qa-menu-item="Deployments" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/environments"><span class="nav-icon-container">
<svg class="s16" data-testid="environment-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#environment"></use></svg>
</span>
<span class="nav-item-name">
Deployments
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><span class="fly-out-top-item-container">
<strong class="fly-out-top-item-name">
Deployments
</strong>

</span>
</li><li class="divider fly-out-top-item"></li>
<li data-track-label="environments" class=""><a aria-label="Environments" class="shortcuts-environments" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Environments" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/environments"><span>
Environments
</span>
</a></li><li data-track-label="releases" class=""><a aria-label="Releases" class="shortcuts-deployments-releases" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Releases" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/releases"><span>
Releases
</span>
</a></li>
</ul>
</li><li data-track-label="monitor_menu" class=""><a aria-label="Monitor" class="shortcuts-monitor has-sub-items" data-qa-selector="sidebar_menu_link" data-qa-menu-item="Monitor" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/environments/metrics"><span class="nav-icon-container">
<svg class="s16" data-testid="monitor-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#monitor"></use></svg>
</span>
<span class="nav-item-name">
Monitor
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><span class="fly-out-top-item-container">
<strong class="fly-out-top-item-name">
Monitor
</strong>

</span>
</li><li class="divider fly-out-top-item"></li>
<li data-track-label="metrics" class=""><a aria-label="Metrics" class="shortcuts-metrics" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Metrics" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/metrics"><span>
Metrics
</span>
</a></li><li data-track-label="error_tracking" class=""><a aria-label="Error Tracking" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Error Tracking" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/error_tracking"><span>
Error Tracking
</span>
</a></li><li data-track-label="incidents" class=""><a aria-label="Incidents" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Incidents" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/incidents"><span>
Incidents
</span>
</a></li>
</ul>
</li><li data-track-label="packages_registries_menu" class=""><a aria-label="Packages &amp; Registries" class="has-sub-items" data-qa-selector="sidebar_menu_link" data-qa-menu-item="Packages &amp; Registries" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/packages"><span class="nav-icon-container">
<svg class="s16" data-testid="package-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#package"></use></svg>
</span>
<span class="nav-item-name">
Packages &amp; Registries
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><span class="fly-out-top-item-container">
<strong class="fly-out-top-item-name">
Packages &amp; Registries
</strong>

</span>
</li><li class="divider fly-out-top-item"></li>
<li data-track-label="packages_registry" class=""><a aria-label="Package Registry" class="shortcuts-container-registry" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Package Registry" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/packages"><span>
Package Registry
</span>
</a></li><li data-track-label="container_registry" class=""><a aria-label="Container Registry" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Container Registry" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/container_registry"><span>
Container Registry
</span>
</a></li><li data-track-label="infrastructure_registry" class=""><a aria-label="Infrastructure Registry" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Infrastructure Registry" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/infrastructure_registry"><span>
Infrastructure Registry
</span>
</a></li>
</ul>
</li><li data-track-label="analytics_menu" class=""><a aria-label="Analytics" class="shortcuts-analytics has-sub-items" data-qa-selector="sidebar_menu_link" data-qa-menu-item="Analytics" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/value_stream_analytics"><span class="nav-icon-container">
<svg class="s16" data-testid="chart-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#chart"></use></svg>
</span>
<span class="nav-item-name">
Analytics
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><span class="fly-out-top-item-container">
<strong class="fly-out-top-item-name">
Analytics
</strong>

</span>
</li><li class="divider fly-out-top-item"></li>
<li data-track-label="ci_cd_analytics" class=""><a aria-label="CI/CD" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="CI/CD" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/pipelines/charts"><span>
CI/CD
</span>
</a></li><li data-track-label="repository_analytics" class=""><a aria-label="Repository" class="shortcuts-repository-charts" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Repository" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/graphs/master/charts"><span>
Repository
</span>
</a></li><li data-track-label="cycle_analytics" class=""><a aria-label="Value Stream" class="shortcuts-project-cycle-analytics" data-qa-selector="sidebar_menu_item_link" data-qa-menu-item="Value Stream" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/value_stream_analytics"><span>
Value Stream
</span>
</a></li>
</ul>
</li><li data-track-label="wiki_menu" class=""><a aria-label="Wiki" class="shortcuts-wiki" data-qa-selector="sidebar_menu_link" data-qa-menu-item="Wiki" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/wikis/home"><span class="nav-icon-container">
<svg class="s16" data-testid="book-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#book"></use></svg>
</span>
<span class="nav-item-name">
Wiki
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><span class="fly-out-top-item-container">
<strong class="fly-out-top-item-name">
Wiki
</strong>

</span>
</li></ul>
</li><li data-track-label="snippets_menu" class=""><a aria-label="Snippets" class="shortcuts-snippets" data-qa-selector="sidebar_menu_link" data-qa-menu-item="Snippets" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/snippets"><span class="nav-icon-container">
<svg class="s16" data-testid="snippet-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#snippet"></use></svg>
</span>
<span class="nav-item-name">
Snippets
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><span class="fly-out-top-item-container">
<strong class="fly-out-top-item-name">
Snippets
</strong>

</span>
</li></ul>
</li>
<li class="hidden">
<a aria-label="Activity" class="shortcuts-project-activity" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/activity">Activity
</a></li>
<li class="hidden">
<a aria-label="Graph" class="shortcuts-network" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/network/master">Graph
</a></li>
<li class="hidden">
<a aria-label="Create a new issue" class="shortcuts-new-issue" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/issues/new">Create a new issue
</a></li>
<li class="hidden">
<a aria-label="Jobs" class="shortcuts-builds" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/jobs">Jobs
</a></li>
<li class="hidden">
<a aria-label="Commits" class="shortcuts-commits" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/commits/master">Commits
</a></li>
<li class="hidden">
<a aria-label="Issue Boards" class="shortcuts-issue-boards" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/boards">Issue Boards
</a></li>

</ul>
<a class="toggle-sidebar-button js-toggle-sidebar qa-toggle-sidebar rspec-toggle-sidebar" role="button" title="Toggle sidebar" type="button">
<svg class="s16 icon-chevron-double-lg-left" data-testid="chevron-double-lg-left-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#chevron-double-lg-left"></use></svg>
<span class="collapse-text gl-ml-3">Collapse sidebar</span>
</a>
<button name="button" type="button" class="close-nav-button"><svg class="s16" data-testid="close-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#close"></use></svg>
<span class="collapse-text gl-ml-3">Close sidebar</span>
</button>
</div>
</aside>


<div class="content-wrapper content-wrapper-margin">
<div class="mobile-overlay"></div>

<div class="alert-wrapper gl-force-block-formatting-context">
















<nav aria-label="Breadcrumbs" class="breadcrumbs container-fluid container-limited">
<div class="breadcrumbs-container">
<button name="button" type="button" class="toggle-mobile-nav"><span class="sr-only">Open sidebar</span>
<svg class="s18" data-testid="hamburger-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#hamburger"></use></svg>
</button><div class="breadcrumbs-links" data-qa-selector="breadcrumb_links_content" data-testid="breadcrumb-links">
<ul class="list-unstyled breadcrumbs-list js-breadcrumbs-list">
<li><a class="group-path breadcrumb-item-text js-breadcrumb-item-text " href="/asu-coding-bootcamp">ASU-Coding-Bootcamp</a><svg class="s8 breadcrumbs-list-angle" data-testid="angle-right-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#angle-right"></use></svg></li> <li><a href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol"><span class="breadcrumb-item-text js-breadcrumb-item-text">ASU-VIRT-CYBER-PT-06-2021-U-LOL</span></a><svg class="s8 breadcrumbs-list-angle" data-testid="angle-right-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#angle-right"></use></svg></li>

<li>
<h2 class="breadcrumbs-sub-title">
<a href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/blob/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh">Repository</a>
</h2>
</li>
</ul>
</div>
<script type="application/ld+json">
{"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"name":"ASU-Coding-Bootcamp","item":"https://asu.bootcampcontent.com/asu-coding-bootcamp"},{"@type":"ListItem","position":2,"name":"ASU-VIRT-CYBER-PT-06-2021-U-LOL","item":"https://asu.bootcampcontent.com/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol"},{"@type":"ListItem","position":3,"name":"Repository","item":"https://asu.bootcampcontent.com/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/blob/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh"}]}

</script>

</div>
</nav>

</div>
<div class="container-fluid container-limited ">
<main class="content" id="content-body" itemscope itemtype="http://schema.org/SoftwareSourceCode">
<div class="flash-container flash-container-page sticky" data-qa-selector="flash_container">
</div>


<div class="js-signature-container" data-signatures-path="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/commits/d80b8312c2e9ea1d86d74be0758a9e7ada352e5a/signatures?limit=1"></div>

<div class="tree-holder" id="tree-holder">
<div class="nav-block">
<div class="tree-ref-container">
<div class="tree-ref-holder">
<form class="project-refs-form" action="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/refs/switch" accept-charset="UTF-8" method="get"><input type="hidden" name="destination" id="destination" value="blob" />
<input type="hidden" name="path" id="path" value="1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh" />
<div class="dropdown">
<button class="dropdown-menu-toggle js-project-refs-dropdown qa-branches-select" type="button" data-toggle="dropdown" data-selected="master" data-ref="master" data-refs-url="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/refs?sort=updated_desc" data-field-name="ref" data-submit-form-on-click="true" data-visit="true"><span class="dropdown-toggle-text ">master</span><svg class="s16 dropdown-menu-toggle-icon gl-top-3" data-testid="chevron-down-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#chevron-down"></use></svg></button>
<div class="dropdown-menu dropdown-menu-selectable git-revision-dropdown dropdown-menu-paging qa-branches-dropdown">
<div class="dropdown-page-one">
<div class="dropdown-title gl-display-flex"><span class="gl-ml-auto">Switch branch/tag</span><button class="dropdown-title-button dropdown-menu-close gl-ml-auto" aria-label="Close" type="button"><svg class="s16 dropdown-menu-close-icon" data-testid="close-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#close"></use></svg></button></div>
<div class="dropdown-input"><input type="search" data-qa-selector="dropdown_input_field" class="dropdown-input-field" placeholder="Search branches and tags" autocomplete="off" /><svg class="s16 dropdown-input-search" data-testid="search-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#search"></use></svg><svg class="s16 dropdown-input-clear js-dropdown-input-clear" data-testid="close-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#close"></use></svg></div>
<div class="dropdown-content"></div>
<div class="dropdown-loading"><div class="gl-spinner-container"><span class="gl-spinner gl-spinner-orange gl-spinner-md gl-mt-7" aria-label="Loading"></span></div></div>
</div>
</div>
</div>
</form>
</div>
<ul class="breadcrumb repo-breadcrumb">
<li class="breadcrumb-item">
<a href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/tree/master">asu-virt-cyber-pt-06-2021-u-lol
</a></li>
<li class="breadcrumb-item">
<a href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/tree/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script">..</a>
</li>
<li class="breadcrumb-item">
<a href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/tree/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved">Solved</a>
</li>
<li class="breadcrumb-item">
<a href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/blob/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh"><strong>sys_info.sh</strong>
</a></li>
</ul>
</div>
<div class="tree-controls gl-children-ml-sm-3"><a class="gl-button btn btn-default shortcuts-find-file" rel="nofollow" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/find_file/master">Find file
</a><a class="gl-button btn btn-default js-blob-blame-link" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/blame/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh">Blame</a><a class="gl-button btn btn-default" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/commits/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh">History</a><a class="gl-button btn btn-default js-data-file-blob-permalink-url" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/blob/fecccd7ad6cc70a52a9fd9fbf294cdb56185feac/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh">Permalink</a></div>
</div>

<div class="info-well d-none d-sm-block">
<div class="well-segment">
<ul class="blob-commit-info">
<li class="commit flex-row js-toggle-container" id="commit-d80b8312">
<div class="avatar-cell d-none d-sm-block">
<a href="/hamiltonmcdermott"><img alt="Hamilton McDermott&#39;s avatar" src="https://secure.gravatar.com/avatar/e7b15d0e90adc4c76ce9274af36b1e75?s=80&amp;d=identicon" class="avatar s40 d-none d-sm-inline-block" title="Hamilton McDermott" /></a>
</div>
<div class="commit-detail flex-list">
<div class="commit-content" data-qa-selector="commit_content">
<a class="commit-row-message item-title js-onboarding-commit-item " href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/commit/d80b8312c2e9ea1d86d74be0758a9e7ada352e5a">Week 6 Day 2</a>
<span class="commit-row-message d-inline d-sm-none">
&middot;
d80b8312
</span>
<button class="gl-button btn btn-default button-ellipsis-horizontal btn-sm gl-ml-2 text-expander js-toggle-button">
<svg class="s12" data-testid="ellipsis_h-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#ellipsis_h"></use></svg>
</button>
<div class="committer">
<a class="commit-author-link js-user-link" data-user-id="254" href="/hamiltonmcdermott">Hamilton McDermott</a> authored <time class="js-timeago" title="Jul 10, 2021 1:18am" datetime="2021-07-10T01:18:12Z" data-toggle="tooltip" data-placement="bottom" data-container="body">Jul 09, 2021</time>
</div>

<pre class="commit-row-description gl-mb-3 js-toggle-content">&#x000A;Activities for 6.2&#x000A;Solutions for activities 6.1</pre>
</div>
<div class="commit-actions flex-row">

<div class="js-commit-pipeline-status" data-endpoint="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/commit/d80b8312c2e9ea1d86d74be0758a9e7ada352e5a/pipelines?ref=master"></div>
<div class="commit-sha-group btn-group d-none d-sm-flex">
<div class="label label-monospace monospace">
d80b8312
</div>
<button class="btn gl-button btn btn-default btn-icon" data-toggle="tooltip" data-placement="bottom" data-container="body" data-title="Copy commit SHA" data-class="gl-button btn btn-default btn-icon" data-clipboard-text="d80b8312c2e9ea1d86d74be0758a9e7ada352e5a" type="button" title="Copy commit SHA" aria-label="Copy commit SHA"><svg class="s16" data-testid="copy-to-clipboard-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#copy-to-clipboard"></use></svg></button>

</div>
</div>
</div>
</li>

</ul>
</div>


</div>
<div class="blob-content-holder" id="blob-content-holder">
<article class="file-holder">
<div class="js-file-title file-title-flex-parent">
<div class="file-header-content">
<svg class="s16" data-testid="doc-text-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#doc-text"></use></svg>
<strong class="file-title-name gl-word-break-all" data-qa-selector="file_name_content">
sys_info.sh
</strong>
<button class="btn gl-button btn btn-default-tertiary btn-icon btn-sm" data-toggle="tooltip" data-placement="bottom" data-container="body" data-class="gl-button btn btn-default-tertiary btn-icon btn-sm" data-title="Copy file path" data-clipboard-text="{&quot;text&quot;:&quot;1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh&quot;,&quot;gfm&quot;:&quot;`1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh`&quot;}" type="button" title="Copy file path" aria-label="Copy file path"><svg class="s16" data-testid="copy-to-clipboard-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#copy-to-clipboard"></use></svg></button>
<small class="mr-1">
1.12 KB
</small>
</div>

<div class="file-actions gl-display-flex gl-align-items-center gl-flex-wrap gl-md-justify-content-end"><button name="button" type="submit" class="btn gl-button btn-confirm js-edit-blob gl-ml-3  js-edit-blob-link-fork-toggler" data-action="edit" data-fork-path="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/forks?continue%5Bnotice%5D=You%27re+not+allowed+to+make+changes+to+this+project+directly.+A+fork+of+this+project+has+been+created+that+you+can+make+changes+in%2C+so+you+can+submit+a+merge+request.&amp;continue%5Bnotice_now%5D=You%27re+not+allowed+to+make+changes+to+this+project+directly.+A+fork+of+this+project+is+being+created+that+you+can+make+changes+in%2C+so+you+can+submit+a+merge+request.&amp;continue%5Bto%5D=%2Fasu-coding-bootcamp%2Fasu-virt-cyber-pt-06-2021-u-lol%2F-%2Fedit%2Fmaster%2F1-Lesson-Plans%2F06-Bash-Scripting-and-Programming%2F1%2FActivities%2F09_First_Bash_Script%2FSolved%2Fsys_info.sh&amp;namespace_key=245">Edit</button><button name="button" type="submit" class="btn gl-button btn-confirm ide-edit-button gl-ml-3 btn-inverted js-edit-blob-link-fork-toggler" data-action="edit" data-fork-path="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/forks?continue%5Bnotice%5D=You%27re+not+allowed+to+make+changes+to+this+project+directly.+A+fork+of+this+project+has+been+created+that+you+can+make+changes+in%2C+so+you+can+submit+a+merge+request.&amp;continue%5Bnotice_now%5D=You%27re+not+allowed+to+make+changes+to+this+project+directly.+A+fork+of+this+project+is+being+created+that+you+can+make+changes+in%2C+so+you+can+submit+a+merge+request.&amp;continue%5Bto%5D=%2F-%2Fide%2Fproject%2FDoobe%2Fasu-virt-cyber-pt-06-2021-u-lol%2Fedit%2Fmaster%2F-%2F1-Lesson-Plans%2F06-Bash-Scripting-and-Programming%2F1%2FActivities%2F09_First_Bash_Script%2FSolved%2Fsys_info.sh&amp;namespace_key=245">Web IDE</button><div class="btn-group gl-ml-3" role="group">


<button name="button" type="submit" class="btn gl-button btn-default btn-default js-edit-blob-link-fork-toggler" data-action="replace" data-fork-path="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/forks?continue%5Bnotice%5D=You%27re+not+allowed+to+make+changes+to+this+project+directly.+A+fork+of+this+project+has+been+created+that+you+can+make+changes+in%2C+so+you+can+submit+a+merge+request.+Try+to+replace+this+file+again.&amp;continue%5Bnotice_now%5D=You%27re+not+allowed+to+make+changes+to+this+project+directly.+A+fork+of+this+project+is+being+created+that+you+can+make+changes+in%2C+so+you+can+submit+a+merge+request.&amp;continue%5Bto%5D=%2Fasu-coding-bootcamp%2Fasu-virt-cyber-pt-06-2021-u-lol%2F-%2Fblob%2Fmaster%2F1-Lesson-Plans%2F06-Bash-Scripting-and-Programming%2F1%2FActivities%2F09_First_Bash_Script%2FSolved%2Fsys_info.sh&amp;namespace_key=245">Replace</button>
<button name="button" type="submit" class="btn gl-button btn-default btn-default js-edit-blob-link-fork-toggler" data-action="delete" data-fork-path="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/forks?continue%5Bnotice%5D=You%27re+not+allowed+to+make+changes+to+this+project+directly.+A+fork+of+this+project+has+been+created+that+you+can+make+changes+in%2C+so+you+can+submit+a+merge+request.+Try+to+delete+this+file+again.&amp;continue%5Bnotice_now%5D=You%27re+not+allowed+to+make+changes+to+this+project+directly.+A+fork+of+this+project+is+being+created+that+you+can+make+changes+in%2C+so+you+can+submit+a+merge+request.&amp;continue%5Bto%5D=%2Fasu-coding-bootcamp%2Fasu-virt-cyber-pt-06-2021-u-lol%2F-%2Fblob%2Fmaster%2F1-Lesson-Plans%2F06-Bash-Scripting-and-Programming%2F1%2FActivities%2F09_First_Bash_Script%2FSolved%2Fsys_info.sh&amp;namespace_key=245">Delete</button>
</div><div class="btn-group gl-ml-3" role="group">
<span class="btn-group has-tooltip js-copy-blob-source-btn-tooltip"><button class="btn btn gl-button btn-default btn-icon js-copy-blob-source-btn" data-class="btn gl-button btn-default btn-icon js-copy-blob-source-btn" data-hide-tooltip="true" data-clipboard-target=".blob-content[data-blob-id=&#39;9022e7b6f065890e930392031cf81e767936b1de&#39;] &gt; pre" type="button" title="Copy" aria-label="Copy"><svg class="s16" data-testid="copy-to-clipboard-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#copy-to-clipboard"></use></svg></button></span>
<a class="btn gl-button btn-default btn-icon has-tooltip" target="_blank" rel="noopener noreferrer" aria-label="Open raw" title="Open raw" data-container="body" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/raw/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh"><svg class="s16" data-testid="doc-code-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#doc-code"></use></svg></a>
<a download="1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh" class="btn gl-button btn-default btn-icon has-tooltip" target="_blank" rel="noopener noreferrer" aria-label="Download" title="Download" data-container="body" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/raw/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh?inline=false"><svg class="s16" data-testid="download-icon"><use xlink:href="/assets/icons-1b2dadc4c3d49797908ba67b8f10da5d63dd15d859bde28d66fb60bbb97a4dd5.svg#download"></use></svg></a>

</div></div>
</div>
<div class="js-file-fork-suggestion-section file-fork-suggestion hidden">
<span class="file-fork-suggestion-note">You can’t <span class="js-file-fork-suggestion-section-action">edit</span> files directly in this project. Fork this project and submit a merge request with your changes.</span>
<a class="js-fork-suggestion-button gl-button btn btn-grouped btn-confirm-secondary" rel="nofollow" data-method="post" href="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/blob/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh">Fork</a>
<button class="js-cancel-fork-suggestion-button gl-button btn btn-grouped" type="button">
Cancel
</button>
</div>



<div class="blob-viewer" data-path="1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh" data-type="simple" data-url="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/blob/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh?format=json&amp;viewer=simple">
<div class="text-center gl-mt-4 gl-mb-3">
<span class="gl-spinner gl-spinner-orange gl-spinner-md qa-spinner" aria-label="Loading"></span>
</div>

</div>


</article>
</div>

<div class="modal" id="modal-upload-blob">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
<h3 class="page-title">Replace sys_info.sh</h3>
<button aria-label="Close" class="close" data-dismiss="modal" type="button">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form class="js-quick-submit js-upload-blob-form" data-method="put" action="/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/update/master/1-Lesson-Plans/06-Bash-Scripting-and-Programming/1/Activities/09_First_Bash_Script/Solved/sys_info.sh" accept-charset="UTF-8" method="post"><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="L7QlHGxHdyby+dXbin4Glymx3ncM6gN07kmVSzI8WNfJYLiKFLNASuD7YnaLJpN/UykFluu9LGGpdRZ1gTdRHA==" /><div class="dropzone">
<div class="dropzone-previews blob-upload-dropzone-previews">
<p class="dz-message light">
Attach a file by drag &amp; drop or <a class="markdown-selector" href="#">click to upload</a>
</p>
</div>
</div>
<br>
<div class="dropzone-alerts gl-alert gl-alert-danger gl-mb-5 data" style="display:none"></div>
<div class="form-group row commit_message-group">
<label class="col-form-label col-sm-2" for="commit_message-e2e281247f0f0b03897af8be2abce28e">Commit message
</label><div class="col-sm-10">
<div class="commit-message-container">
<div class="max-width-marker"></div>
<textarea name="commit_message" id="commit_message-e2e281247f0f0b03897af8be2abce28e" class="form-control gl-form-input js-commit-message" placeholder="Replace sys_info.sh" data-qa-selector="commit_message_field" required="required" rows="3">
Replace sys_info.sh</textarea>
</div>
</div>
</div>

<input type="hidden" name="branch_name" id="branch_name" />
<input type="hidden" name="create_merge_request" id="create_merge_request" value="1" />
<input type="hidden" name="original_branch" id="original_branch" value="master" class="js-original-branch" />

<div class="form-actions">
<button name="button" type="button" class="btn gl-button btn-confirm btn-upload-file" id="submit-all"><div class="gl-spinner gl-mr-2 js-loading-icon hidden"></div>
Replace file
</button><a class="btn gl-button btn-default btn-cancel" data-dismiss="modal" href="#">Cancel</a>
<div class="inline gl-ml-3">
A new branch will be created in your fork and a new merge request will be started.
</div>

</div>
</form></div>
</div>
</div>
</div>

</div>


</main>
</div>
</div>
</div>
<div class="top-nav-responsive layout-page content-wrapper-margin">
<div data-view-model="{&quot;primary&quot;:[{&quot;id&quot;:&quot;project&quot;,&quot;title&quot;:&quot;Projects&quot;,&quot;active&quot;:true,&quot;icon&quot;:&quot;project&quot;,&quot;href&quot;:&quot;&quot;,&quot;view&quot;:&quot;projects&quot;,&quot;css_class&quot;:&quot;qa-projects-dropdown&quot;,&quot;data&quot;:{&quot;track_label&quot;:&quot;projects_dropdown&quot;,&quot;track_event&quot;:&quot;click_dropdown&quot;,&quot;track_experiment&quot;:&quot;new_repo&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;groups&quot;,&quot;title&quot;:&quot;Groups&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;group&quot;,&quot;href&quot;:&quot;&quot;,&quot;view&quot;:&quot;groups&quot;,&quot;css_class&quot;:&quot;qa-groups-dropdown&quot;,&quot;data&quot;:{&quot;track_label&quot;:&quot;groups_dropdown&quot;,&quot;track_event&quot;:&quot;click_dropdown&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;milestones&quot;,&quot;title&quot;:&quot;Milestones&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;clock&quot;,&quot;href&quot;:&quot;/dashboard/milestones&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;milestones_link&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;snippets&quot;,&quot;title&quot;:&quot;Snippets&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;snippet&quot;,&quot;href&quot;:&quot;/dashboard/snippets&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;snippets_link&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;activity&quot;,&quot;title&quot;:&quot;Activity&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;history&quot;,&quot;href&quot;:&quot;/dashboard/activity&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;activity_link&quot;},&quot;emoji&quot;:null}],&quot;secondary&quot;:[],&quot;views&quot;:{&quot;projects&quot;:{&quot;namespace&quot;:&quot;projects&quot;,&quot;currentUserName&quot;:&quot;Doobe&quot;,&quot;currentItem&quot;:{&quot;id&quot;:40,&quot;name&quot;:&quot;ASU-VIRT-CYBER-PT-06-2021-U-LOL&quot;,&quot;namespace&quot;:&quot;ASU-Coding-Bootcamp / ASU-VIRT-CYBER-PT-06-2021-U-LOL&quot;,&quot;webUrl&quot;:&quot;/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol&quot;,&quot;avatarUrl&quot;:null},&quot;linksPrimary&quot;:[{&quot;id&quot;:&quot;your&quot;,&quot;title&quot;:&quot;Your projects&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/projects&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Your projects&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;starred&quot;,&quot;title&quot;:&quot;Starred projects&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/projects/starred&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Starred projects&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;explore&quot;,&quot;title&quot;:&quot;Explore projects&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/explore&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Explore projects&quot;},&quot;emoji&quot;:null}],&quot;linksSecondary&quot;:[{&quot;id&quot;:&quot;create&quot;,&quot;title&quot;:&quot;Create new project&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/projects/new&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Create new project&quot;},&quot;emoji&quot;:null}]},&quot;groups&quot;:{&quot;namespace&quot;:&quot;groups&quot;,&quot;currentUserName&quot;:&quot;Doobe&quot;,&quot;currentItem&quot;:{},&quot;linksPrimary&quot;:[{&quot;id&quot;:&quot;your&quot;,&quot;title&quot;:&quot;Your groups&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/groups&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Your groups&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;explore&quot;,&quot;title&quot;:&quot;Explore groups&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/explore/groups&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Explore groups&quot;},&quot;emoji&quot;:null}],&quot;linksSecondary&quot;:[{&quot;id&quot;:&quot;create&quot;,&quot;title&quot;:&quot;Create group&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/groups/new&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Create group&quot;},&quot;emoji&quot;:null}]},&quot;new&quot;:{&quot;title&quot;:&quot;New...&quot;,&quot;menu_sections&quot;:[{&quot;title&quot;:&quot;This project&quot;,&quot;menu_items&quot;:[{&quot;id&quot;:&quot;new_issue&quot;,&quot;title&quot;:&quot;New issue&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/issues/new&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;track_event&quot;:&quot;click_link_new_issue&quot;,&quot;track_label&quot;:&quot;plus_menu_dropdown&quot;,&quot;qa_selector&quot;:&quot;new_issue_link&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;new_snippet&quot;,&quot;title&quot;:&quot;New snippet&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/asu-coding-bootcamp/asu-virt-cyber-pt-06-2021-u-lol/-/snippets/new&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;track_event&quot;:&quot;click_link_new_snippet_project&quot;,&quot;track_label&quot;:&quot;plus_menu_dropdown&quot;},&quot;emoji&quot;:null}]},{&quot;title&quot;:&quot;GitLab&quot;,&quot;menu_items&quot;:[{&quot;id&quot;:&quot;general_new_project&quot;,&quot;title&quot;:&quot;New project&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/projects/new&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;track_experiment&quot;:&quot;new_repo&quot;,&quot;track_event&quot;:&quot;click_link_new_project&quot;,&quot;track_label&quot;:&quot;plus_menu_dropdown&quot;,&quot;qa_selector&quot;:&quot;global_new_project_link&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;general_new_group&quot;,&quot;title&quot;:&quot;New group&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/groups/new&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;track_event&quot;:&quot;click_link_new_group&quot;,&quot;track_label&quot;:&quot;plus_menu_dropdown&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;general_new_snippet&quot;,&quot;title&quot;:&quot;New snippet&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/-/snippets/new&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;track_event&quot;:&quot;click_link_new_snippet_parent&quot;,&quot;track_label&quot;:&quot;plus_menu_dropdown&quot;,&quot;qa_selector&quot;:&quot;global_new_snippet_link&quot;},&quot;emoji&quot;:null}]}]},&quot;search&quot;:{&quot;id&quot;:&quot;search&quot;,&quot;title&quot;:&quot;Search&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;search&quot;,&quot;href&quot;:&quot;/search?project_id=40&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:null,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Search&quot;},&quot;emoji&quot;:null}},&quot;shortcuts&quot;:[{&quot;id&quot;:&quot;project-shortcut&quot;,&quot;title&quot;:&quot;Projects&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/projects&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-projects&quot;,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Projects&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;groups-shortcut&quot;,&quot;title&quot;:&quot;Groups&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/groups&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-groups&quot;,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Groups&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;milestones-shortcut&quot;,&quot;title&quot;:&quot;Milestones&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/milestones&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-milestones&quot;,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Milestones&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;snippets-shortcut&quot;,&quot;title&quot;:&quot;Snippets&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/snippets&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-snippets&quot;,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Snippets&quot;},&quot;emoji&quot;:null},{&quot;id&quot;:&quot;activity-shortcut&quot;,&quot;title&quot;:&quot;Activity&quot;,&quot;active&quot;:false,&quot;icon&quot;:&quot;&quot;,&quot;href&quot;:&quot;/dashboard/activity&quot;,&quot;view&quot;:&quot;&quot;,&quot;css_class&quot;:&quot;dashboard-shortcuts-activity&quot;,&quot;data&quot;:{&quot;qa_selector&quot;:&quot;menu_item_link&quot;,&quot;qa_title&quot;:&quot;Activity&quot;},&quot;emoji&quot;:null}],&quot;activeTitle&quot;:&quot;Menu&quot;}" id="js-top-nav-responsive"></div>
</div>



<script>
//<![CDATA[
if ('loading' in HTMLImageElement.prototype) {
  document.querySelectorAll('img.lazy').forEach(img => {
    img.loading = 'lazy';
    let imgUrl = img.dataset.src;
    // Only adding width + height for avatars for now
    if (imgUrl.indexOf('/avatar/') > -1 && imgUrl.indexOf('?') === -1) {
      const targetWidth = img.getAttribute('width') || img.width;
      imgUrl += `?width=${targetWidth}`;
    }
    img.src = imgUrl;
    img.removeAttribute('data-src');
    img.classList.remove('lazy');
    img.classList.add('js-lazy-loaded', 'qa-js-lazy-loaded');
  });
}

//]]>
</script>

</body>
</html>

