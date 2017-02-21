object dmoSendLogs: TdmoSendLogs
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 134
  Width = 206
  object IdHTTP: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 32
    Top = 24
  end
  object WebUpdate: TmxWebUpdate
    TagInfo.Author = 'mxAuthor'
    TagInfo.Email = 'mxEmail'
    TagInfo.ClientFileName = 'mxClientSideName'
    TagInfo.Download = 'mxDownload'
    TagInfo.ProductName = 'mxProduct'
    TagInfo.Redirection = 'mxRedirection'
    TagInfo.RunParameters = 'mxRunParameters'
    TagInfo.Version = 'mxVersion'
    ProductInfo.URL = 'http://www.taligent.com.br/swupdates/e2update.htm'
    ProductInfo.Version = '7.0'
    InfoCaption.OkButton = '&OK'
    InfoCaption.CancelButton = '&Cancel'
    InfoCaption.CheckForUpdate = 'C&heck for updates in the future'
    Options = [uoRunUpdate]
    Version = '1.2'
    OnUpdateAvailable = WebUpdateUpdateAvailable
    OnBeforeShowInfo = WebUpdateBeforeShowInfo
    OnCannotExecute = WebUpdateCannotExecute
    OnNoUpdateFound = WebUpdateNoUpdateFound
    OnDownloadError = WebUpdateDownloadError
    Left = 128
    Top = 24
  end
end
