object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Ghorbani Send Email'
  ClientHeight = 382
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 178
    Top = 24
    Width = 16
    Height = 13
    Caption = 'To:'
  end
  object Label6: TLabel
    Left = 154
    Top = 54
    Width = 40
    Height = 13
    Caption = 'Subject:'
  end
  object Label7: TLabel
    Left = 148
    Top = 81
    Width = 46
    Height = 13
    Caption = 'Message:'
  end
  object Label8: TLabel
    Left = 560
    Top = 8
    Width = 35
    Height = 13
    Caption = 'Status:'
  end
  object Label10: TLabel
    Left = 200
    Top = 343
    Width = 112
    Height = 13
    Caption = 'Ghorbani77@gmail.com'
  end
  object Label11: TLabel
    Left = 200
    Top = 361
    Width = 92
    Height = 13
    Caption = '+98-919-143-7539'
  end
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 0
    Width = 145
    Height = 382
    VertScrollBar.Tracking = True
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 6
    object CategoryPanel1: TCategoryPanel
      Top = 0
      Height = 377
      Caption = 'Email settings'
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 56
        Height = 13
        Caption = 'Mail server:'
      end
      object Label2: TLabel
        Left = 8
        Top = 56
        Width = 24
        Height = 13
        Caption = 'Port:'
      end
      object Label3: TLabel
        Left = 8
        Top = 102
        Width = 52
        Height = 13
        Caption = 'Username:'
      end
      object Label4: TLabel
        Left = 8
        Top = 148
        Width = 50
        Height = 13
        Caption = 'Password:'
      end
      object Label9: TLabel
        Left = 8
        Top = 194
        Width = 28
        Height = 13
        Caption = 'From:'
      end
      object Edit1: TEdit
        Left = 8
        Top = 29
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'mail.example.com'
      end
      object Edit2: TEdit
        Left = 8
        Top = 75
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '25'
      end
      object Edit3: TEdit
        Left = 8
        Top = 121
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'username'
      end
      object Edit4: TEdit
        Left = 8
        Top = 167
        Width = 121
        Height = 21
        PasswordChar = '*'
        TabOrder = 3
        Text = 'password'
      end
      object Edit5: TEdit
        Left = 8
        Top = 213
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'example@example.com'
      end
    end
  end
  object Edit6: TEdit
    Left = 200
    Top = 24
    Width = 345
    Height = 21
    TabOrder = 0
    Text = 'Ghorbani77@gmail.com'
  end
  object Edit7: TEdit
    Left = 200
    Top = 51
    Width = 345
    Height = 21
    TabOrder = 1
    Text = 'test From Delphi'
  end
  object Memo1: TMemo
    Left = 200
    Top = 78
    Width = 345
    Height = 259
    TabOrder = 2
  end
  object Button1: TButton
    Left = 470
    Top = 343
    Width = 75
    Height = 25
    Caption = 'Send'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 560
    Top = 24
    Width = 173
    Height = 313
    ReadOnly = True
    TabOrder = 4
  end
  object Button2: TButton
    Left = 658
    Top = 343
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 5
    OnClick = Button2Click
  end
  object IdSMTP1: TIdSMTP
    OnStatus = IdSMTP1Status
    SASLMechanisms = <>
    Left = 16
    Top = 288
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 72
    Top = 288
  end
end
