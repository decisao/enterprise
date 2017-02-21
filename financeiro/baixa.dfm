object formBaixa: TformBaixa
  Left = 287
  Top = 202
  BorderStyle = bsDialog
  Caption = 'Baixa de Contas'
  ClientHeight = 333
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 333
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 290
      Width = 506
      Height = 2
      Align = alBottom
      Shape = bsBottomLine
      ExplicitWidth = 497
    end
    object Panel2: TPanel
      Left = 0
      Top = 292
      Width = 506
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 384
        Top = 5
        Width = 107
        Height = 30
        Cursor = crHandPoint
        Caption = 'Cancelar'
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000013131317636362798B8988A693928FAE91908EAC91908EAC91908EAC9190
          8EAC91908EAC91908EAC91908EAC91908EAC91908EAC91908EAC91908EAC9190
          8EAC92918EAD92918EAD7675748F2D2D2D380000000000000000000000000000
          00158D8D8BB8F2EBDEF9FFFBE7FFFFFBE7FFFFFCE7FFFFFCE7FFFFFCE7FFFFFC
          E7FFFFFCE7FFFFFCE7FFFFFCE7FFFFFCE7FFFFFCE7FFFFFCE7FFFFFCE7FFFFFC
          E7FFFFFCE7FFFFFBE7FFFEF8E6FEB4B2AFD610101032000000000000000ACECC
          C8E8FEF6E7FFADBFE6FF6F95E4FF6D91E4FF6F93E4FF6F93E4FF6F93E4FF6F93
          E4FF6F93E4FF6F94E4FF6F94E4FF6F93E4FF6F93E4FF6F93E4FF6F93E4FF6F93
          E4FF6D92E4FF6A91E4FF8FAAE5FFF6F0E7FFF2EEE7FF0303031752525271FFF9
          E9FF7197E5FF0037E0FF0045E0FF0046E0FF0047E0FF0047E0FF0047E0FF0046
          E0FF0045E0FF0038E0FF0036DFFF0043E0FF0048E0FF0047E0FF0047E0FF0047
          E0FF0047E0FF0046E0FF0039E0FF3F76E3FFFFF8E8FF6464638A838281A1FFF8
          E9FF185FE2FF0653E1FF175FE2FF175DE2FF175DE2FF175DE2FF175DE2FF145C
          E2FF0755E1FF6B95E5FF7CA1E6FF0E58E1FF115AE2FF175DE2FF175DE2FF175D
          E2FF175DE2FF175DE2FF0F59E1FF014FE0FFEAEAE9FF858280A65555556DFFFE
          EBFF4D85E4FF0050E2FF1661E3FF1661E3FF1661E3FF1661E3FF1761E3FF0155
          E2FF578BE6FFFFFFECFFFFFFECFF7EA5E7FF0050E1FF1761E3FF1661E3FF1661
          E3FF1661E3FF1661E3FF0455E2FF296EE4FFFFFAEBFF6564648301010106FEF7
          ECFFD2DCEAFF0053E3FF1162E4FF1565E4FF1565E4FF1565E4FF1565E4FF035A
          E3FF4884E6FFFFFFEDFFFFFFEDFF6B9BE7FF0056E2FF1565E4FF1565E4FF1565
          E4FF1565E4FF1464E4FF004FE3FFADC5E9FFFFFBECFF0F0F0F1B000000006363
          637EFFFFEDFF5A94E8FF0056E3FF156AE4FF1569E4FF1569E4FF1569E4FF1468
          E4FF0058E3FF3C82E6FF4B8BE6FF0059E3FF1267E5FF1569E4FF1569E4FF1569
          E4FF156AE4FF005DE3FF317CE5FFFFFFEEFF989796B300000000000000000000
          0001E3DDD8EDF1F0EFFF0666E5FF0B68E5FF156DE5FF156DE5FF156DE5FF116B
          E5FF0362E4FFD1DDEDFFE2E6EEFF0A68E4FF0E6AE5FF156DE5FF156DE5FF156D
          E5FF116BE5FF005BE4FFD1DDECFFFFFAEFFF0000000600000000000000000000
          00002928283CFFFFF0FF96BBECFF005CE4FF1570E6FF1471E6FF1471E6FF0869
          E6FF247AE6FFFFFFF1FFFFFFF1FF3786E7FF0367E5FF1471E6FF1471E6FF1571
          E6FF005EE4FF68A2EAFFFFFFF2FF585858710000000000000000000000000000
          000000000000BCBBB7CFFFFFF3FF2C82E8FF006AE5FF1475E7FF1475E7FF046B
          E6FF3084E8FFFFFFF2FFFFFFF3FF4892E9FF0068E5FF1575E7FF1475E7FF086E
          E7FF0D71E7FFFCF8F2FFECE7E1F2000000000000000000000000000000000000
          00000000000008080811FFFFF3FFCADCF0FF0066E5FF1177E8FF1578E8FF016F
          E6FF3F8FEAFFFFFFF4FFFFFFF5FF5C9FEBFF006BE6FF1578E8FF1379E8FF0064
          E5FFA0C5EEFFFFFFF5FF2C2C2C3D000000000000000000000000000000000000
          000000000000000000006B6B6A83FFFFF6FF58A1EBFF006DE7FF157DE9FF0071
          E6FF4C9BECFFFFFFF6FFFFFFF7FF70AEEEFF006EE7FF157EE9FF0072E7FF2F8B
          EAFFFFFFF6FFA19F9EB600000000000000000000000000000000000000000000
          0000000000000000000000000002E8E7E0EEF6F6F5FF0279E7FF0A7BE9FF0074
          E7FF59A4EDFFFFFFF8FFFFFFF8FF85BBEFFF0071E7FF107FE8FF006FE7FFD5E5
          F4FFFFFFF6FF0000000700000000000000000000000000000000000000000000
          00000000000000000000000000003939394CFFFFF9FF96C6F1FF0073E7FF0077
          E8FF67AEEFFFFFFFF9FFFFFFF9FF90C3F1FF0074E8FF0074E8FF67AFEEFFFFFF
          F9FF6968687E0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C7C4C2D3FFFFF9FF1C8CECFF0077
          E9FF3B9BECFFFFFFFBFFFFFFFCFF61AEEFFF0077E9FF0883EAFFFFFCF9FFF0EF
          EAF4000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000C0C0C16FFFFFCFFBFDEF5FF007B
          E9FF0081EAFF379DEDFF4DA8F0FF0585EAFF0079E8FF94C9F3FFFFFFFCFF3333
          3343000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000072717188FFFFFEFF56AF
          F0FF0081E9FF048AEBFF0186EBFF0084EBFF2B9CEDFFFFFFFCFFA9A8A6BB0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002FAFAF9FBFAFB
          FDFF018CECFF008BECFF068FECFF0082E9FFD8EDFAFFFFFFFEFF000000080000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000041404050FFFF
          FFFFCBE7F9FF0090EDFF0088EBFF9CD3F7FFFFFFFFFF74737385000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007878
          7788FFFFFFFFFFFFFEFFFBFDFEFFFFFFFFFFAEAEADBB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003434343CA7A7A7B4B4B4B4C05353535E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 264
        Top = 5
        Width = 107
        Height = 30
        Cursor = crHandPoint
        Caption = 'Baixar'
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000E0000000900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004A49
          49658F8E8EB17E7D7C9E18181826000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000467676794F9EF
          F2FFFFF3F8FFFFF2F8FFD8D5D4EF010101160000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000366656595FFF4FAFFC7D8
          CFFF439970FF73AF93FFFDF0F5FFA9A6A6CC0000000600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000046E6D6D9BFFF5FDFFB6D2C3FF0A83
          49FF0C834CFF007B3EFF83B99FFFFFF6FEFF4645456E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000360605F8EFFF7FDFFC8DCD1FF0E8951FF1D90
          5AFF279562FF22925DFF118A53FFE2E7E3FFEEE6E9F900000012000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000026161618DFFF6FCFFC3DACFFF149359FF1B965EFF279B
          66FF279B66FF279B66FF0E9156FF5DB18BFFFFF8FFFF868584AD000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000015E5E5E87FFF6FEFFCCDFD6FF0E9559FF1B9B61FF27A06AFF27A0
          6AFF27A06AFF27A06AFF269F69FF069454FFBAD8CAFFFFF6FCFF131212310000
          0000000000000000000000000000000000000000000000000000000000000000
          00014A4A4A76FFF7FDFFD6E6DEFF1BA265FF19A165FF27A66EFF27A66EFF27A6
          6EFF27A66EFF27A66EFF27A66EFF19A165FF2DA872FFFEF4F7FFBDB8B9D70000
          0007000000000000000000000000000000000000000000000000000000005353
          537DFFF8FEFFD3E6DCFF14A465FF18A668FF27AC72FF27AC72FF27AC72FF27AC
          72FF27AC72FF27AC72FF27AC72FF27AC72FF06A05DFF7CC8A6FFFFFAFFFF5D5D
          5D8400000000000000000000000000000000000000000000000015151530FFF6
          F9FFDFEBE6FF17AC6CFF17AC6BFF27B175FF27B175FF27B175FF25B074FF14AC
          6AFF16AC6BFF25B074FF27B175FF27B175FF22AF72FF12AB68FFE4EDE8FFFFF6
          FBFF0606061D000000000000000000000000000000000000000074747495FFF6
          FBFF30B97EFF10B06CFF27B77AFF27B77AFF27B77AFF25B679FF05AE66FF81D1
          AFFF83D3B0FF0CAF69FF27B77AFF27B77AFF27B77AFF12B06EFF42BE88FFFFFA
          FFFFB0ADAECD00000006000000000000000000000000000000007472738FFFF8
          FDFF34C085FF0EB66FFF29BD7DFF27BD7DFF26BD7CFF05B469FF67CEA3FFFFFF
          FFFFFFFAFFFF24BC7BFF19B976FF27BD7DFF27BD7DFF27BD7CFF05B369FF8DD8
          B8FFFFFCFFFF5858587F000000000000000000000000000000000F0F0F19FFF8
          FDFFEAF3EEFF20BE7EFF10BC76FF25C080FF04B76FFF5ECEA0FFFFFCFFFFD6D0
          D3E2F4F0F4F8C2E8D8FF05B86FFF22BF80FF25C081FF25C081FF20BE7EFF08B9
          71FFD3EDE2FFFFFBFFFF26262646000000000000000000000000000000003E3E
          3D4EFFFCFFFFE8F3EEFF19BE80FF00B368FF56CDA0FFFFFDFFFFE7E1E4ED0000
          00026E6D6D85FFFFFFFF69D3ABFF03B974FF23C084FF23C184FF23C184FF11BC
          7AFF29C388FFFFFAFEFFF9F4F7FB000000190000000000000000000000000000
          000043434353FFFDFFFFEEF6F2FFB5E7D4FFFFFBFFFFF4F0F1F7010101050000
          000000000001EAE7E8F0FFFBFDFF1FC286FF12C081FF20C388FF20C388FF20C3
          88FF04BC78FF50CDA0FFFFFFFFFFD1CDCEE10000001400000000000000000000
          0000000000002F2F2F39D0CCCED9F5F4F5F7A7A4A4B400000002000000000000
          00000000000023232330FFFFFFFFC0ECDDFF00BB79FF19C388FF1DC48BFF1DC4
          8BFF1CC38AFF00BC79FF61D5ADFFFFFFFFFFD3CFD2E30000000D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000007978798DFFFFFFFF76DABBFF00BC7CFF1AC68DFF1BC6
          8EFF1BC68EFF1AC68DFF00BC7BFF7DDCBCFFFFFFFFFF69696985000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C7C5C6D4FFFFFFFF47D2A7FF00C084FF19C7
          92FF18C792FF18C792FF00C287FF06C38AFFFFFFFFFF8583849C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000004040409FEFEFEFEFFFDFEFF12C894FF00C3
          8AFF13C894FF00C288FF00C289FFB4ECDCFFFFFFFFFF4C4C4C5B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000028282833FFFFFFFFE7F9F4FF12CA
          98FF00C085FF45D6AFFFEBFBF6FFFFFFFFFF949394A300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003F3F3F4DFFFFFFFFFDFD
          FEFFD9F6EEFFFFFFFFFFFFFFFFFF363636420000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002E2E2E35C8C8
          C8D1E9E9E9EE9A9A9AA600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00070000000D0000000200000000000000000000000000000000}
        TabOrder = 1
        OnClick = cxButton2Click
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 506
      Height = 290
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Image2: TImage
        Left = 6
        Top = 11
        Width = 129
        Height = 113
        Picture.Data = {
          0954474946496D61676547494638396175006D00C40000EAEBCEFFFFFFDADAD9
          B5B5B48A8A8AE1E1E1598992F3F3F2CED1B3CFCFCEF8F8F8EDEDEB92B2B3F7F7
          D6639199FCFCFCDADBC69F9F9EC0C0BFFBFBE8719BA2487077A3B59EE7E7E652
          7E86FDFDF3B1C5B581A5AAFFFFFB9DBABBE0E1BCBECFB721F90400000000002C
          0000000075006D000005FF60208E64699EE8F8ACEC212C8AC23E696DDF78AEEF
          01AB08030221228C24622B9E72C96CAA568A43505288291689615546737ABF60
          683412B9CC643109E12803BBDF3CE883CC9D3DACEA6D57C9E9FBE1803562595C
          255007521107853A7E198F8F7F81932A5646492677510704028B7B377D8F13A4
          A5911C94816217046D28770717031105B517B7B8B9BA0B070DBE0D0000BEA491
          A9709A070911AE27B0175902B505BAD4B8C10D101A1D0C0C1B1A1E0D13C5C661
          9B031298CD510BACBCCC291C19130DDADBDC1B14141FE1130FA8E44E90494107
          CAD0BA02042E2C7A6722DEBC0F1DEC6DC047C181817DE20A028C1303D1398D24
          9C0958136D5A355D003CFF70EB46B1A201030E7C1DC8B0B189C08F82A25C1829
          A0A7C993B7827DB897CF81D19706302000F0A9E612580716484097332AC202EE
          408E90D7A0C3C4A2485F62C06001C0827E4E9568E2853305AC05082F6485C7D5
          2BD8B063C9065B9496635459031886D4393281CF9F278331C8E712EF580B1E20
          4C53D057C71DB88005576297C57049A0410174286AD131D9C8D11456C6017541
          DB570709606D8AC261030B8C4B23CD5BD6ACE6D599360DD42AE2EDD5B9B533F8
          5A5C51B7D8C7C16010072E2296B4CCC44592FC0C5A31E9B0491FA3467C807A89
          5817AE9FFBDDE3CAB3EDB6BA03607ED47105C81052E72A6F7E3022D71250E656
          6CD3D076423CCB7D675AFF6FD2F537E07F120C309D71B221772057F439179E5E
          BE4DD7977BB8A817607684C1875835C1E0D61C78BC8D570D0C953DC04E2EEA05
          46226726827681772BDA879F7ED42CE02140ADBDA6CE5F09B993C13F0D29D740
          862C42D7E1817E54D9D75BC3550557046685334E09B641B960740C39220F244B
          32B9831D1AC9584D8DECC192A207C104A3238FF5ED265E7E275A234C38FC7CC9
          1A9B338C801E35706AC5C103F3A484C0071A68B0949D89CDA7A09EF7B9B84B9D
          907E00C13082BA250610640C70000B5545652409A2CC834D442C7500AA9A8CFA
          A2629ECF71D86000AD0213D1361B30200C316A66322A1112F414841E0FB245D5
          85AED643943EB3167707FF3062EAA96B1BBD76251145FB78A9950F0AA8415047
          595471E89BB60C6063938D4AFB55511FD499CB020B408040B6B9FE889830A2C1
          3A6F45B27A596C0F87CC6206B907E4C14E9FB78828986DB076939B510ED44BA9
          5C1040C66F7899F2E967C02C31B6A2050D1C8056488710712A0D0C07710112C1
          FDB71EBCF4AC840FC63C673C4C47112070DBA5FD4637933CF308BC33CF48093D
          D31E3E70622328621C40060C0CB516A1460ECD67718F30F11C6E030B44304082
          60F74B272F5CD1036CDABB6D20CCA995C460B666C8942D5B7C34B63B22980F4D
          B434783D6B6C360010A844F486F84150A7DB25E39AEB5E6D88218122245EE15A
          277C47DCEEBB243CD2C0FF071449FE12D31E2060C1E512280EF758211700B036
          5F6BA82D99305BD1097BEDE944071251ABFA6CE8F368D09CED48F58CC00042DB
          BA788BD740FE15F22057803B32CAF05E5C471798BD50D4CE72FD90E9E09D8E31
          38BFD865FA634BF942FBF4C8E75501066BBFDCD17A431E02D710E94D23CD34EE
          2A93720040BDF2F18C02E8BB4DE9A2749A60D0CE62D4835D05326516FB21C208
          DAB3566C06E0BFFF61074C0A281E069252BE12626C03E8531FF5200380A1D42E
          7E12C440E2B0C2854D44400019AC9B0B082081856C024020C9C0011493971286
          E5802854E05DCAF70D174ECF88129C200222A3901A5EF06F3938C40E13B088FF
          6429131318A207349097FF111AD17CF9909B0A4DA8010B086E70E58BA2522233
          1BCABC25804362D93AB2408544D56C012921E358CE983C075020581F0B5B1A4B
          07C309CECF03A8914BE5D631129A59E6876A4880C482A880065C0092821CE419
          316632F291F262259463EA200001494E322A659BDA9AA0A28617E0EB66AF880A
          E23CF0812212B26718332230A1880147120092AC940B5FB6F7176830228BB4EC
          04BEB6F6A0F478C00208D8D02F7BB64DF2C96F82088CA485DE728B5A5A328B1D
          D99C0064814575C005021180A4037C49C87ADAB37A15882702109000C32CB312
          7F498F397308D0A810819D02828D758E89CD798AF29E10358D2321B3CF7E4623
          6BE994C640F3A84305CCFF62557F1CC2005242017A46F49EDF0C597E5CA9D087
          154000E63AE7A02CC1430F1D62087502C0064C7AD233A6F41BAC2CD0330DB28E
          F44423A604D5A00CCC365302F00290C188004F7BCA4047EEB3A286894FB3E0F2
          5201F0D140835AC1010AB08345ADA34E16282355E3584CAB5ED5A27C13D53AB8
          DA93AF26F50B6FA95328D76A9F09D22F3292A92247F5D7BFBA12C05443350607
          3AA257B5AE559580AD23473508CB5A18D6029F98AC170E5127044C15A56DAD80
          0152C74FCFF46901371003BE8CDA13026036B1A9784006A2108C7D6A33A2513C
          E65B4B72DA992222623D110019325B13FD51D4A166AC674A8F391E7CC52020AD
          61AD7023201DCD9EA07FFF091DD00422E0380F20D79E516C9C64BCEA893A3041
          8B2EF52AFF609B830210810C6B48AD02B81B0C0F94F4A16C0D2D45F929DC21BC
          779DBAE00F347F5858652404AC3908C2117A809004D8605137842A02763AD594
          EED73007B5CA147491DD9916B5ABEEA52E7B51305FEA82022102B8C10D555516
          A9AAB58C8EACC01459198DE1A221062341EC5D9F406010930187E9A841893BDC
          832C5CC00637CCC02CD05A46185B15B0D1B08053EB90CEC37EEF2979DB493F0D
          5C5E0FCD77003530B2B15670C3AB01C381B00BAD5FAFCADF3C548EB0FC139275
          956A952D2720085DAEC12C3C24661EDB6D080B196220D53C4102BCD530787E07
          9C0750DDF3A6B3B005A8FF258247B000A7E26016FC1148A54D8530DAD6D78D04
          3040042405E50BB8192450C9C2951DFDE1E06652A623504616678186FFB0A213
          5D90AD4E52425A6CEE5364CE1C573A8D405C562FC0AB769EC2A48D6099593CB5
          005998450230A1BF02E86B1608988A45F938E2001CC47BB0F6CB4BED9C007321
          981697BC1AB487205C20FBE7D810988204B2CAED2067E22FEEB210ABFF6259F5
          06E899375C13278CC06EF7BA7B30EC8029E7E45218EDAD0530FA3E2F5480AB5E
          C46222426B8A821006E0931B0AE6017FB9DC34F075D80C9233021288F879E112
          5C3BAB4111856005910734922158D4E36D72CFE54A5272871F041A2A678202A4
          4B6E1B2781A959E463B4FF6B7C70FF989A16C295A5965E4A06C9BE417F0F0BAE
          95B9506907E3A033511949CA6F88EA4D28A36C98B3A933DCDB0965EED806AACD
          FA4B87505D56783DCC09798BD8C9DE0C582803D3F636D66FD96E18B7CFB906D6
          E977D19DFA09568039056216481670ADD09AEFAA5954278950DF2E08977675F1
          82753C0A64C6E345D4725C7710EECBE0FE732278C6F094A85AD6A35C86409B0D
          552220BD21586018413CA016F92B6ACD4DEB0ECE0FD8D65D9D6E0110718592B3
          80D6A23A86F06D9E55D84FC24DFDFBBC9D91750B7610614BAD38FC537E4EFDD4
          6445FC38009134EA9AEC224C450D422048710993052354FFFC4EC972BF613A0B
          32C0971781070884557FFF706578E8B76FE9856C5BD613643033C6E75B704180
          3E61804E7128EBC77EF3F67EDAC66593160622F172A6E54A01680CEBB27F2E57
          6E1B480479760C1F587E05526CD45135B0E439FD16699DD081127710413000C4
          C77C2378259A201CF83223C9B7511EA88387D58330081C01458317A8805BA66C
          0FA84109B78370852F4B481D201222FFA378EDD743DDC67A7F010449A8496E17
          860E8230B25758FE063C6AB176C8527D0A91856928579B407176F5837D377871
          5812C5A787E601724061825BF67274D852996751EBF48707B8113AC12E2D5788
          808686ED6115FD55808C588739887CD1305D87085009E77AF7B76A9AB889AB95
          7C46276C63280498488ABAA5884E4D788145577B1F377DF6677EAEF88A19C76F
          5EB865422058B9464E23610413F887BA7884AD467B0EC83011E88267788C5717
          5DFDD68088508D0F2381B84889D06819FAF75284378411A306161082580388DB
          1807DDA82C1B371541908413E8838D788EEAF0619FD77FA5A288B3F189F2B859
          8F46880BD813CAA48FFBC88F73255DC1558CF03890B1155D6C680B58E8860AB9
          901D3183DD8785DF138F11097741588D1C799119595C41680556807B1F099284
          8291381002003B}
      end
      object Label1: TLabel
        Left = 152
        Top = 8
        Width = 40
        Height = 13
        Caption = 'Cliente'
      end
      object Label2: TLabel
        Left = 152
        Top = 48
        Width = 150
        Height = 13
        Caption = 'Movimento(s) gerador(es)'
      end
      object Label3: TLabel
        Left = 152
        Top = 208
        Width = 114
        Height = 13
        Caption = 'Valor da(s) conta(s)'
      end
      object Label4: TLabel
        Left = 296
        Top = 208
        Width = 115
        Height = 13
        Caption = 'Conta caixa afetada'
        FocusControl = cxDBLookupComboBox1
      end
      object Label6: TLabel
        Left = 152
        Top = 248
        Width = 59
        Height = 13
        Caption = 'Acr'#233'scimo'
        FocusControl = dedACRESCIMO
      end
      object Label7: TLabel
        Left = 360
        Top = 248
        Width = 60
        Height = 13
        Caption = 'Valor Total'
      end
      object Label5: TLabel
        Left = 152
        Top = 128
        Width = 132
        Height = 13
        Caption = 'Valor Total por extenso'
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 151
        Top = 23
        TabStop = False
        DataBinding.DataField = 'CLIENTE'
        DataBinding.DataSource = dsrDadosBaixa
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 0
        Width = 337
      end
      object cxDBMemo1: TcxDBMemo
        Left = 151
        Top = 63
        TabStop = False
        DataBinding.DataField = 'MOVIMENTOS'
        DataBinding.DataSource = dsrDadosBaixa
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 1
        Height = 58
        Width = 337
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 151
        Top = 223
        TabStop = False
        DataBinding.DataField = 'VALOR'
        DataBinding.DataSource = dsrDadosBaixa
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 2
        Width = 129
      end
      object dedACRESCIMO: TcxDBTextEdit
        Left = 151
        Top = 263
        DataBinding.DataField = 'ACRESCIMO'
        DataBinding.DataSource = dsrDadosBaixa
        TabOrder = 3
        OnEnter = dedACRESCIMOEnter
        OnExit = dedACRESCIMOExit
        Width = 129
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 359
        Top = 263
        TabStop = False
        DataBinding.DataField = 'TOTAL'
        DataBinding.DataSource = dsrDadosBaixa
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 4
        Width = 129
      end
      object ckComprovante: TcxDBCheckBox
        Left = 7
        Top = 203
        Caption = 'Comprovante'
        DataBinding.DataField = 'COMPROVANTE'
        DataBinding.DataSource = dsrDadosBaixa
        Properties.ImmediatePost = True
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        TabOrder = 5
        Width = 105
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 295
        Top = 223
        DataBinding.DataField = 'CODCONTA'
        DataBinding.DataSource = dsrDadosBaixa
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'CONTA'
          end>
        Properties.ListSource = dsrContas
        TabOrder = 6
        OnEnter = dedACRESCIMOEnter
        OnExit = dedACRESCIMOExit
        Width = 194
      end
      object dedPARCIAL: TcxDBTextEdit
        Left = 7
        Top = 263
        DataBinding.DataField = 'DESCONTO'
        DataBinding.DataSource = dsrDadosBaixa
        TabOrder = 7
        OnEnter = dedACRESCIMOEnter
        OnExit = dedACRESCIMOExit
        Width = 129
      end
      object ckParcial: TcxDBCheckBox
        Left = 7
        Top = 240
        Caption = 'Baixa Parcial'
        DataBinding.DataField = 'PARCIAL'
        DataBinding.DataSource = dsrDadosBaixa
        Properties.ImmediatePost = True
        Properties.ValueChecked = 'P'
        Properties.ValueUnchecked = 'T'
        TabOrder = 8
        Width = 121
      end
      object cxDBMemo2: TcxDBMemo
        Left = 151
        Top = 143
        TabStop = False
        DataBinding.DataField = 'EXTENSO'
        DataBinding.DataSource = dsrDadosBaixa
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 9
        Height = 58
        Width = 337
      end
    end
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvContas'
    RemoteServer = formPrincipal.SocketConnection
    Left = 288
    Top = 24
    object cdsContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContasCONTA: TStringField
      FieldName = 'CONTA'
      Required = True
      FixedChar = True
      Size = 40
    end
  end
  object dsrContas: TDataSource
    AutoEdit = False
    DataSet = cdsContas
    Left = 328
    Top = 80
  end
  object cdsBaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 254
        Name = 'MOVCOM'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'ACRESCIMOS'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 14
        NumericScale = 3
        Name = 'DESCONTOS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODCONTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'USUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'pmBaixa'
    RemoteServer = formPrincipal.SocketConnection
    Left = 352
    Top = 24
  end
  object dxDadosBaixa: TdxMemData
    Indexes = <>
    SortOptions = []
    OnCalcFields = dxDadosBaixaCalcFields
    Left = 120
    Top = 72
    object dxDadosBaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object dxDadosBaixaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object dxDadosBaixaMOVIMENTOS: TStringField
      FieldName = 'MOVIMENTOS'
      Size = 254
    end
    object dxDadosBaixaVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '####0.00'
      currency = True
    end
    object dxDadosBaixaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '######0.00'
    end
    object dxDadosBaixaCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object dxDadosBaixaTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      DisplayFormat = '#####0.00'
      Calculated = True
    end
    object dxDadosBaixaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object dxDadosBaixaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '####0.00'
    end
    object dxDadosBaixaPARCIAL: TStringField
      FieldName = 'PARCIAL'
      OnChange = dxDadosBaixaPARCIALChange
      Size = 1
    end
    object dxDadosBaixaEXTENSO: TStringField
      FieldName = 'EXTENSO'
      Size = 254
    end
    object dxDadosBaixaDATAEXTENSO: TStringField
      FieldName = 'DATAEXTENSO'
      Size = 254
    end
    object dxDadosBaixaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 60
    end
    object dxDadosBaixaCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object dxDadosBaixaCPF: TStringField
      FieldName = 'CPF'
    end
    object dxDadosBaixaVALORFMT: TStringField
      FieldName = 'VALORFMT'
    end
    object dxDadosBaixaCOMPROVANTE: TStringField
      FieldName = 'COMPROVANTE'
      Size = 1
    end
  end
  object dsrDadosBaixa: TDataSource
    DataSet = dxDadosBaixa
    Left = 120
    Top = 120
  end
  object ppDBPipeline: TppDBPipeline
    DataSource = dsrDadosBaixa
    OpenDataSource = False
    MoveBy = 0
    UserName = 'DBPipeline'
    Left = 120
    Top = 176
  end
  object ppReportReceber: TppReport
    DataPipeline = ppDBPipeline
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 192
    Top = 176
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline'
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 207434
      mmPrintPosition = 0
      object ppRichText1: TppRichText
        UserName = 'RichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Caption = 'RichText1'
        MailMerge = True
        RichText = 
          '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil Verd' +
          'ana;}{\f1\fnil\fcharset0 Verdana;}{\f2\fnil MS Sans Serif;}}'#13#10'\v' +
          'iewkind4\uc1\pard\qc\b\f0\fs40 R\f1  \f0 E\f1  \f0 C\f1  \f0 I\f' +
          '1  \f0 B\f1  \f0 O\b0\fs24\par'#13#10'\pard\par'#13#10'\f1\par'#13#10'\tab\tab Rec' +
          'ebemos de \b <CLIENTE>\b0 , CPF/CNPJ \b <CPF>\b0 , nesta data de' +
          ' \b <DATAEXTENSO>\b0 , a quantia de \b <VALORFMT>\b0  \b (<EXTEN' +
          'SO>)\b0 , referente ao pagamento da(s) duplicata(s) identificada' +
          '(s): \b <MOVIMENTOS>\b0 .\par'#13#10'\par'#13#10'\tab\tab\par'#13#10'\tab\tab Por ' +
          'ser verdade, firmo o presente,\par'#13#10'\par'#13#10'\par'#13#10'\par'#13#10'\par'#13#10'\tab' +
          '\tab ________________________________________________________\pa' +
          'r'#13#10'\b\tab\tab <EMPRESA>\b0\par'#13#10'\b\tab\tab\b0 CNPJ: \b <CNPJ>\b0' +
          '\f0\par'#13#10'\f2\fs16\par'#13#10'}'#13#10#0
        RemoveEmptyLines = False
        Stretch = True
        mmHeight = 89165
        mmLeft = 3175
        mmTop = 3175
        mmWidth = 190500
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppRichText2: TppRichText
        UserName = 'RichText2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Caption = 'RichText2'
        MailMerge = True
        RichText = 
          '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil Verd' +
          'ana;}{\f1\fnil\fcharset0 Verdana;}{\f2\fnil MS Sans Serif;}}'#13#10'\v' +
          'iewkind4\uc1\pard\qc\b\f0\fs40 RECIBO\b0\fs24\par'#13#10'\pard\par'#13#10'\f' +
          '1\par'#13#10'\tab\tab Recebemos de \b <CLIENTE>\b0 , CPF/CNPJ \b <CPF>' +
          '\b0 , nesta data de \b <DATAEXTENSO>\b0 , a quantia de \b <VALOR' +
          'FMT>\b0  \b (<EXTENSO>)\b0 , referente ao pagamento da(s) duplic' +
          'ata(s) identificada(s): \b <MOVIMENTOS>\b0 .\par'#13#10'\par'#13#10'\tab\tab' +
          '\par'#13#10'\tab\tab Por ser verdade, firmo o presente,\par'#13#10'\par'#13#10'\pa' +
          'r'#13#10'\par'#13#10'\par'#13#10'\tab\tab ________________________________________' +
          '________________\par'#13#10'\b\tab\tab <EMPRESA>\b0\par'#13#10'\b\tab\tab\b0' +
          ' CNPJ: \b <CNPJ>\b0\f0\par'#13#10'\f2\fs16\par'#13#10'}'#13#10#0
        RemoveEmptyLines = False
        Stretch = True
        mmHeight = 89165
        mmLeft = 3175
        mmTop = 116681
        mmWidth = 190500
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDashDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 109009
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppReportPagar: TppReport
    DataPipeline = ppDBPipeline
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 288
    Top = 176
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline'
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 207434
      mmPrintPosition = 0
      object ppRichText3: TppRichText
        UserName = 'RichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Caption = 'RichText1'
        MailMerge = True
        RichText = 
          '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil Verd' +
          'ana;}{\f1\fnil\fcharset0 Verdana;}{\f2\fnil MS Sans Serif;}}'#13#10'\v' +
          'iewkind4\uc1\pard\qc\b\f0\fs40 R\f1  \f0 E\f1  \f0 C\f1  \f0 I\f' +
          '1  \f0 B\f1  \f0 O\b0\fs24\par'#13#10'\pard\par'#13#10'\f1\par'#13#10'\tab\tab Rec' +
          'ebemos de \b <EMPRESA>\b0 , CNPJ \b <CNPJ>\b0 , nesta data de \b' +
          ' <DATAEXTENSO>\b0 , a quantia de \b <VALORFMT>\b0  \b (<EXTENSO>' +
          ')\b0 , referente ao pagamento da(s) duplicata(s) identificada(s)' +
          ': \b <MOVIMENTOS>\b0 .\par'#13#10'\par'#13#10'\tab\tab\par'#13#10'\tab\tab Por ser' +
          ' verdade, firmo o presente,\par'#13#10'\par'#13#10'\par'#13#10'\par'#13#10'\par'#13#10'\tab\ta' +
          'b ________________________________________________________\par'#13#10 +
          '\b\tab\tab <CLIENTE>\b0\par'#13#10'\b\tab\tab\b0\f0\par'#13#10'\f2\fs16\par'#13 +
          #10'}'#13#10#0
        RemoveEmptyLines = False
        Stretch = True
        mmHeight = 89165
        mmLeft = 3175
        mmTop = 3175
        mmWidth = 190500
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppRichText4: TppRichText
        UserName = 'RichText2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Caption = 'RichText2'
        MailMerge = True
        RichText = 
          '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil Verd' +
          'ana;}{\f1\fnil\fcharset0 Verdana;}}'#13#10'\viewkind4\uc1\pard\qc\b\f0' +
          '\fs40 RECIBO\b0\fs24\par'#13#10'\pard\par'#13#10'\f1\par'#13#10'\tab\tab Recebemos' +
          ' de \b <EMPRESA>\b0 , CNPJ \b <CNPJ>\b0 , nesta data de \b <DATA' +
          'EXTENSO>\b0 , a quantia de \b <VALORFMT>\b0  \b (<EXTENSO>)\b0 ,' +
          ' referente ao pagamento da(s) duplicata(s) identificada(s): \b <' +
          'MOVIMENTOS>\b0 .\par'#13#10'\par'#13#10'\tab\tab\par'#13#10'\tab\tab Por ser verda' +
          'de, firmo o presente,\par'#13#10'\par'#13#10'\par'#13#10'\par'#13#10'\par'#13#10'\tab\tab ____' +
          '____________________________________________________\par'#13#10'\b\tab' +
          '\tab <CLIENTE>\b0\par'#13#10'\b\tab\tab\b0\f0\par'#13#10'\b\fs40\par'#13#10'}'#13#10#0
        RemoveEmptyLines = False
        Stretch = True
        mmHeight = 89165
        mmLeft = 3175
        mmTop = 116681
        mmWidth = 190500
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Pen.Style = psDashDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 109009
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
