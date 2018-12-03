# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
# Sound.destroy_all
Sprite.destroy_all

# sprites = [
#   {id:1, name: 'guitar', url: 'https://image.flaticon.com/icons/png/128/26/26843.png', sprite_type: 'string'},
#   {id:2, name: 'drumset', url: 'https://image.flaticon.com/icons/svg/27/27328.svg', sprite_type: 'percussion'},
#   {id:3, name: 'piano', url: 'https://image.flaticon.com/icons/svg/27/27066.svg', sprite_type: 'percussion'},
#   {id:4, name: 'drums2', url: 'https://image.flaticon.com/icons/svg/26/26995.svg', sprite_type: 'percussion'},
#   {id:5, name: 'headphones', url: 'https://image.flaticon.com/icons/svg/26/26834.svg', sprite_type: 'miscellaneous'},
#   {id:6, name: 'electric-guitar', url:'https://image.flaticon.com/icons/svg/27/27205.svg', sprite_type: 'string'}
# ]

sprites = [
  {name:"guitar", url:"https://image.flaticon.com/icons/png/128/26/26843.png", sprite_type: "string"},
{name:"drumset", url:"https://image.flaticon.com/icons/svg/27/27328.svg", sprite_type: "percussion"},
{name:"piano", url:"https://image.flaticon.com/icons/svg/27/27066.svg", sprite_type: "percussion"},
{name:"conga", url:"https://image.flaticon.com/icons/svg/26/26995.svg", sprite_type: "percussion"},
{name:"headphones", url:"https://image.flaticon.com/icons/svg/26/26834.svg", sprite_type: "miscellaneous"},
{name:"electric guitar", url:"https://image.flaticon.com/icons/svg/27/27205.svg", sprite_type: "string"},
{name:"dj", url:"https://image.flaticon.com/icons/svg/27/27011.svg", sprite_type: "dj"},
{name:"music note", url:"https://image.flaticon.com/icons/svg/27/27144.svg", sprite_type: "miscellaneous"},
{name:"piano keys", url:"https://image.flaticon.com/icons/svg/27/27194.svg", sprite_type: "percussion"},
{name:"speakers", url:"https://image.flaticon.com/icons/svg/27/27134.svg", sprite_type: "dj"},
{name:"mp3", url:"https://image.flaticon.com/icons/svg/27/27188.svg", sprite_type: "miscellaneous"},
{name:"record player", url:"https://image.flaticon.com/icons/svg/27/27391.svg", sprite_type: "dj"},
{name:"violin", url:"https://image.flaticon.com/icons/svg/26/26560.svg", sprite_type: "string"},
{name:"trumpet", url:"https://image.flaticon.com/icons/svg/73/73349.svg", sprite_type: "brass"},
{name:"french horn", url:"https://image.flaticon.com/icons/svg/3/3805.svg", sprite_type: "brass"},
{name:"trombone", url:"https://image.flaticon.com/icons/svg/16/16867.svg", sprite_type: "brass"},
{name:"saxophone", url:"https://image.flaticon.com/icons/svg/26/26583.svg", sprite_type: "woodwind"},
{name:"clarinet", url:"https://image.flaticon.com/icons/svg/26/26508.svg", sprite_type: "woodwind"},
{name:"kanye west", url:"https://cdn4.iconfinder.com/data/icons/famous-faces/100/kanye2-512.png", sprite_type: "artist"},
{name:"the beatles", url:"https://i.pinimg.com/originals/a5/45/ef/a545efbf3454dde9cc87a57151d673ce.png", sprite_type: "artist"}
]

User.create(first_name: 'Kristina', last_name: 'Tong', email: 'kristina.tong@gmail.com', password: '123')
User.create(first_name: 'Kristina', last_name: 'Tong', email: 'k', password: '1')

sprites.map do |sprite|
  Sprite.create(sprite)
end

Sound.all.map do |sound|
    sound.update(image_url: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAe1BMVEUAAAD///+YmJiVlZXHx8e0tLS6urrS0tLX19eurq74+PhlZWX8/Pzz8/Po6OicnJyDg4PBwcFubm54eHhWVlbJycmmpqbg4OAzMzOOjo57e3tgYGAsLCyBgYFxcXFQUFBHR0cTExM8PDxJSUkfHx8MDAwmJiYZGRk3NzdGsG7YAAAPE0lEQVR4nMWda2OqPAzHcfMCKorzuqlTt7ln3/8TPgKl9N60TTz/V+cwBH5A0yRNSzag1rzMV8VL9TG7Hk4/t3t2v/2cDtfZR/VSrPJyTn7+jPLg+ej9csrcOl3eRznlRVAR7kfnLw+bqOt5tCe6EgrC/GUTANdrs6R4mNiE5fgzio7pvl5Nka8IlXCx+07BY7oUJeZF4RFOCwy8VpsRno3FItzO0PBavU2QrgyFcLr7QearddqhPEgEwnztv9pLtdyNVpN8n9earEawV/qM0IUkE04ukEsdab8DvtWb5A4kkXBr79Yv7+PFrvvPu/ZLsD9wSWyQSYRWvr/3bdOGJt2Gs/bbXyhhln0nPccEwtzSlN7GvD+bdtuO2q9vcMLHu5rQHqMJF+aG9LGV9ups7En9+dT4a7vW0V5ALOGL6TLetupux+5P6h/KQMIs20VeaRzh1vCOHQpD98VvhOptLoIJs1Ncc4whLI/66Wfm06+6vy+UP+ThhFn2GeMCRBAW+qkrWyvhj0o1FSv9IBCtwi83mLDUe/gXR8DT7TNUto/iCLNZ8GMMJRxr53x1nvPK9iqU7TvtOFBp1syjQEItvK08AWvF9lsq29+jCQ3+kVNBhAs1hPhUDYim7m38ULYDvHWrvoL6xhBC1cR8ATyNzmaqTk1aOKm2aiRC9bbr8YJBc7bzt7IdFJHYFfCmgglLxcuG9k3sZzdlsy+N6tMGbFOhhPu7fAbwe9LZJvW8qTpBGyOQcCsf/g3K13cLygUlE+pORBKh0j+P4YA8RJS9utDQwihYaAwiXEoHDjPWXRAhd9R7DELYnYYQyr3zOoRvwN9H2fJGOd66VE8pkvAsHRTUR4hiPd+LtHFruNwYqa5SFOGHdMjwGO21/WElbYx1vCMQvYRSP/8XkUtgcdJM2rg0XS0Noo9QAtTzSQCxEPFL2viKRuhF9BBW4rFCbUwr5rf92I+bKE8Cx00oWdHXKMDBgCUdJTfLkAeJl9v4OQmlYCI219U9L6kJXzEJ3V2/i3AoHgXS9ZjF7KYUSh5QCZ0OnINQ8jsCPFHLcSSnBns0zpUpsv5FydkC+lbrORqJrQXFLRX1F0P4pxwkHrGNBcV2HJ7x9mlmPbuVUC+piEZsDyU6NREZb5+sV2cjNKR9oxF32l1Gcrwl2QyqhdAc3UQitm72RdgyNB4+URZrYyG0jO69mPf2qG11/wlb9LwygtRkl5PwzXaUOMR2vFfYYGoD6TK/YkZCR2wThdj6aMJblJDxdskY2pkInZYuBrGNJATH48N1hnj9Zzq5idBdJhGB2BoWwdhZW0GiTNGPgdA3LBSO2L4UQt4oMeNtl2FgSif0+xvhiM3PBEMQUGoSpjuEEFD9GozYPDNhrIEKUE0HGQlBXVUoYhMiCuEJHaEeSKmEc/8xIhCb7ufK/4seWgg6+AihCZQwxMYJ7KuGCBzvXmpOQyGEnzsIsXlod56poXC8eynjbgphQJF9EGKTteCZmonv2ElSRk9lwqBkewhik3blmRoSx7uXXFwgE4YliAIQGy9iIv2PTp92wtB7C0ds3kvu1BjL/hAlPUSJMNjVACM2poYnJDEz3iZJSRuRMKJ5gBHr9CE3AdgzFzSJ3b5I+F/EsaCINRRvH2SOdydxCEkgjLNwQMR6OG3T/SdkVluchJYoEEaeF4ZYjyLy4Sey0IJLCBR7wuhuGITYOEvs30DfN0n9OFBPGDdnsBYIsd6R+VOUjrd+TZwwxRuGINbWhbUO/Jy+QTrh2f8juwCIdXqN5cJoHW8m7l4gtQ0/Ym2pWZU2VqmJUzwa7QhTyz+8iHWIyIafIqvYA9X1+h1hchflQ6xfElYJQJPxVtV5UIwQIer2IX7xXgqx1MQlmRDjpB7ENR9+SjJqcG0lwtSS3UZuxIJXDaVUsQfoUyTEKYZ0Iz4s6O0822w2M5TbCdBcIMQaC7IhzofVs7AEDQVCtOIPY93UCrUCCq7PnhDpJa2lIc6pUxYO9YR4tZAa4j/kY6mvhvCKeVgRkTht6NN7R4gczXDEaXxAhqOvjhDbT2SIJCUlYSoZIbqP8frPWyDTmBHid1WvxqH631m13BW7ZTWjWCjEpHNLSBFyv6hd4P08FEtoy9X5bvwhrk4t4RPCtY1pauuQPG3aNMSMrHyn18U2SSO/Up962xBS23TXRD7qDvOlIaQ9h698mtZnPdaEpIPqgAJ42sHEmpDU0ECmCJKm3soHIWXWBDYPjBJx8iAkHMzTABfDUTEaapP4CRF3D0K64FuZ4rnq7+VMWcGDri1Wg4xuIEheRkGNQeVJRmQW9TLIyIZJpHJWQ5xxF/tJsvt8GmRk1Tuio2YuTRDrCMm6/mlG1VmI9RA2r2kj7HMluo4yo2rkCz+ghEg15JZnRH634Ky5ytY/yB/iMCMqm++dGXcz6LsNopY4zmjstDDr17MntTndZTS1LX0FpC8X29e300xReM9oUiYT6CMUqutpXlOqoTxgK6zFWyJNGEc0lNcXrftfvd7qklwK0fScdchVA/rNBBHlaLj5gLx53DcgeaHwluCWxHMXkMiPWyWSWBx55n8nHhlC7CPfmcSBjCmaBYjP6oAUIvGdn1Nng6Mi6hkSEZIMH/AAHhJ90k5SuGdBazJDxZ22IFtKUsJ/o/Ha+vAXsDPflyQI+KWxpv0UuRCfhqT8+5BdKQ7bz0wP8EtpcmJXoviwz6N5dx3Ab0aMZkS+d59Gg8eHNNmGNVH8JMypdndHwo4kF5JVGdHATJ8tdRed9K8zUVrzJSNyJISZR65uTkgKE43qj8gywsL0sX+aL12RZfVDc95U1QQ53ciMOPxrNmfih0vISsTKjGwS0k24fpMZuUtjiFRXkc0JR0jlb8so/eJdXhCIajmXh/+YEZbTKGPAwx7jTamxoRsDPj4ICUuitEqMRT4uxrk2jk9Yp/n6IERb8Nagf1+LMX4Qks6Vg9TTkFba7smrvvxLR9PXRBGWm9RSP2yhaE5mRRt9NYRJn9X06+Z6U6lrwT8aQvI05cy2RGxOXsw/aggRZ8zYdDTVCK+IhhRE7RvCZ0yPz26VUuet5RZmFMX9g7ZW/1kTP35n1a4oit15ZhhMeKMYmZkxQsxpT7FqpmigI+4Y4VPmx7vF4gxsxD0jJK709mvDmygu4m3QEZKviOOWGIOgIq45IaXz7ZUysxYTccUJn7IUh1lL7btNiIhTTji44h01REfjZBM0xDbR1RISL6Bm0s/n2LYYPhbiSCCknVXS6/R23Gxm55vnK4ZIiKVAOHiCi1iLVRJ9+ebSoCCytDsjfFIZBEu/XbxfdMFAHEuET7KmbIbwWv2wDgniXCIknkLWqegv30OYjti9Jd2ZnjPxmrmften2fvkuFbHL8/F7SVJ1oopZ0DrH7/8qXBoiX9OXEz5lcrmw2BfgO5tJiNxYc8Kn2BoWQ9Td70UnQkXk3mDf4olTbo2YF9PkTQCECYj94HJ/oickpPiNrf/t/ZRwEmJ/dOFW0k+P/+1OVZeawb7VGokojEALhPRL4fFuvs59AT9aE4co9EVicyAqGO7FrUvd5u1faEpHFM2YSEje63OoeszydwBUBKI4qieZNOrVb7mBaxx9z1fZExDFGg+ZkLol8qbXFEfDPucbgyh5hHK3dEWHkiQXRwd8UDHM4ZJbuExIu6R/74s2OQXPyGI8omtdfeLMKX8vGxfR8UW/JETlQyzR37eIETdx86YkE/wB+DBExYKp7iHp2qL969OMrAM/jh6IqGaANAeYEFC4u9f6vyGfaAcjntSfaYSUi7n0Z2nqEwAhYjiiVsKjBzGEGZv+JE0h1kY7dzqibqB1QroV04UXaKkQoyHqvzFsIsudCs+snfEFChGDEA0hmek+UgWKwjoLE9v1pCGalt0yEVKlbIQ20iYUYr5r6kK8m3pYY1sgWsBBWNm0bezQEBGKaPTlza2dZiKN2Bc3G8AhIgzR/PF3iz0jmbMn9vBtRU1pPnsc4tW8t4WQxD8VDUtrzeAhIgDRcrtCvumcKtHdaIOY2E/SmxBtY67WXpegKYrdXztVyDOKGIJoXQ/e7lfgJ23E16itHAgKEZ2IR+uedsIp+miUGLixEp5oQgVR+3IlhBDd2vyIB2dJr7AQUZJUPu3I27nuInLqTbrP7PYFhoiCJFPoulHO9wTXoErfPmeeYWiIyCVVjDo7HXdLQM1pSD4aK0yGjCKaJE30cc948LR1zClDcg6s9ZoM32CGSBrr9ORdfdYMcYK17Dayzig8RBwoZdu+AMVrr/EQ5XvNMrMRIWIpjZF5IzB/j4Q2nV22m2z+c/hXzOWabX+ICehzsRBli8d67OAQUbbvgLEPiFeBZG7kPF9XlxwIKNdTQDx30BlwpivIRqVzJ4JCxIU8TL3y/wJIiFMILntWXXMKCRGVy4D9FPiWYAyAy0fs0l0Bo4jKwBjQp4W2g336elLqmVt9Gk9nkDLccIC+3uCWXv4lAqpDJiw48xWaMk2VmZj2eDCaMLksTB2luLLtoFFENQYI6EZDrHVaqKH2fN0IEKA55Wq+wVkHn0A42Kcs0afmZDp30BsilurLcw3qYQJ73IR5yWoo2HWylfFEXHMtgguMKUN9ivieUe0Wunf+23iejk93NkJzrMG5oDJ2aoYap3Lr7ziXHoG/BZU31IrIdkVOIVJdLF7PagsRS4PLHxFsxeTzyqiBcHWAnafyzN7lxFDaE1JjxBWXsRxGeDjqo+Kj6Ya+bVoYFno4xKUeY3Oy4RGVZuK7P2juydBYmRU7xhGddV6Evqpa0rZ7TFKmeDA0D5icwbWaqhLy6pNrCOBN+z2/Rfziy7Glv51FJaxaJRA+7neAN66P93JT2fRw88nSViGxgS3kY1ESYQijHkPwprxbjN/t9R9pfMmEg8EW6AHoKSeQe2RdFwWsZMKH5w9yVr+L0WqS19rnk9Vot6wAZTtVQvtDJHxYiCXFuuB//hWYIEIhfGiIXfC3Tmx+XFiEjwe5u6LhHcfBDrZVeIQPLVAgj6O4MhuLUAkHdaedVAz/33kY7bxYhE1Ya/IaFUPej7vkrsEgCsKH5vtiHZJ+/K7GCB2DUUSErfKi+vatd3fYvI8pHh0XKWGjaTlZFa/Vx/Hr8Ptzu2f328/p7zr7qJajVV7i2Uyb/gelP6smHKgRpwAAAABJRU5ErkJggg==')
  end
