<?php /* #?ini charset="utf-8"?

[DatabaseSettings]
DatabaseImplementation=ezmysqli
Server=mysql
Port=
User=user_ezdeploy
Password=NotSoSecret
Database=ezdeploy
Charset=
Socket=disabled

[ExtensionSettings]
ActiveExtensions[]
ActiveExtensions[]=ezjscore
ActiveExtensions[]=ezoe
ActiveExtensions[]=ezformtoken
ActiveExtensions[]=ezstarrating
ActiveExtensions[]=ezgmaplocation
ActiveExtensions[]=ezdemo
ActiveExtensions[]=ezwt
ActiveExtensions[]=ezflow
ActiveExtensions[]=ezie
ActiveExtensions[]=ezodf
ActiveExtensions[]=ezprestapiprovider
ActiveExtensions[]=ezmultiupload
# Disabled as it slows down demos and workshops
#ActiveExtensions[]=ezautosave

ActiveExtensions[]=ezfind
ActiveExtensions[]=ggsysinfo
ActiveExtensions[]=ezdbintegrity

[Session]
SessionNameHandler=custom

[SiteSettings]
DefaultAccess=eng
SiteList[]
SiteList[]=ezdeploy_site
SiteList[]=ezdeploy_site_admin
RootNodeDepth=1

[UserSettings]
LogoutRedirect=/

[SiteAccessSettings]
CheckValidity=false
AvailableSiteAccessList[]
AvailableSiteAccessList[]=ezdeploy_site
AvailableSiteAccessList[]=ezdeploy_site_admin
RelatedSiteAccessList[]
RelatedSiteAccessList[]=ezdeploy_site
RelatedSiteAccessList[]=ezdeploy_site_admin
MatchOrder=uri
HostMatchMapItems[]

[DesignSettings]
DesignLocationCache=enabled

[RegionalSettings]
TranslationSA[]
TranslationSA[eng]=Eng

[FileSettings]
VarDir=var/ezdemo_site

[MailSettings]
Transport=SMTP
TransportServer=maildev
TransportUser=
TransportPassword=
AdminEmail=ggiunta@kaliop.com
EmailSender=

[EmbedViewModeSettings]
AvailableViewModes[]
AvailableViewModes[]=embed
AvailableViewModes[]=embed-inline
InlineViewModes[]
InlineViewModes[]=embed-inline

# Config for development environments
[DebugSettings]
DebugOutput=enabled
AlwaysLog[]=warning
AlwaysLog[]=debug
AlwaysLog[]=notice
AlwaysLog[]=strict

[TemplateSettings]
ShowUsedTemplates=enabled
