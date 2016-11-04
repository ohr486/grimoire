# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Grimoire.Repo.insert!(%Grimoire.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

bk1 = Grimoire.Repo.insert!(%Grimoire.Book{title: "book1", description: "desc1"})
bk2 = Grimoire.Repo.insert!(%Grimoire.Book{title: "book2", description: "desc2"})

sc1 = Grimoire.Repo.insert!(%Grimoire.Screen{book_id: bk1.id, url: "url1"})
sc2 = Grimoire.Repo.insert!(%Grimoire.Screen{book_id: bk2.id, url: "url2"})

sl1 = Grimoire.Repo.insert!(%Grimoire.Slide{book_id: bk1.id, url: "url1", markdown: "mk1"})
sl2 = Grimoire.Repo.insert!(%Grimoire.Slide{book_id: bk2.id, url: "url2", markdown: "mk2"})

cm1 = Grimoire.Repo.insert!(%Grimoire.Comment{screen_id: sc1.id, body: "body1"})
cm2 = Grimoire.Repo.insert!(%Grimoire.Comment{screen_id: sc2.id, body: "body2"})
