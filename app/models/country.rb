class Country < ActiveHash::Base
  self.data = [
    {id: 1, name: 'France', name_kana: 'フランス'},
    {id: 2, name: 'Italy', name_kana: 'イタリア'},
    {id: 3, name: 'Japan', name_kana: '日本'},
    {id: 4, name: 'Spain', name_kana: 'スペイン'},
    {id: 5, name: 'America', name_kana: 'アメリカ'},
    {id: 6, name: 'Germany', name_kana: 'ドイツ'},
    {id: 7, name: 'Argentina', name_kana: 'アルゼンチン'},
    {id: 8, name: 'Chile', name_kana: 'チリ'},
    {id: 9, name: 'Australia', name_kana: 'オーストラリア'},
    {id: 10, name: 'South Africa', name_kana: '南アフリカ'},
    {id: 11, name: 'New Zealand', name_kana: 'ニュージーランド'},
    {id: 12, name: 'Austria', name_kana: 'オーストリア'},
    {id: 13, name: 'Georgia', name_kana: 'ジョージア'},
    {id: 14, name: 'Turkey', name_kana: 'トルコ'},
    {id: 15, name: 'Bulgaria', name_kana: 'ブルガリア'},
  ]
  include ActiveHash::Associations
  has_many :wines
end
