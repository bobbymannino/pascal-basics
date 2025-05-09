object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object TablConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Tabl')
    LoginPrompt = False
    Left = 416
    Top = 69
  end
  object CommentsTable: TFDQuery
    Connection = TablConnection
    SQL.Strings = (
      'SELECT * FROM comments')
    Left = 512
    Top = 197
  end
  object PostsTable: TFDQuery
    Connection = TablConnection
    SQL.Strings = (
      'SELECT * FROM posts')
    Left = 353
    Top = 199
  end
  object UsersTable: TFDQuery
    Connection = TablConnection
    SQL.Strings = (
      'SELECT * FROM users')
    Left = 225
    Top = 197
  end
end
