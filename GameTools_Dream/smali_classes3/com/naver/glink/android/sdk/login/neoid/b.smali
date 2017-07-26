.class public Lcom/naver/glink/android/sdk/login/neoid/b;
.super Ljava/lang/Object;
.source "NeoIdImage.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "89504e470d0a1a0a0000000d494844520000000c0000003c0806000000520f5b4a0000000473424954080808087c08648800000093494441544889e596410e80200c0407d34f79f5e4ffbfe2454d00df3024252472eeb2bb6d692940479ccd0403c47e9c97025024c373bfca43b45a1d83ba1e08975408680ee0c221e84e93f6e05b434bf27590267ce1969494cda03d4c9094de4bbd39887f0f364b9a211f105dd661cad490b375a0f924404bcadf4033765cfab8cf9634d2adcb555a3f20ffd7f8e3dab569fd00dbc449301620f2800000000049454e44ae426082"

    sput-object v0, Lcom/naver/glink/android/sdk/login/neoid/b;->a:Ljava/lang/String;

    const-string/jumbo v0, "89504e470d0a1a0a0000000d49484452000000260000002008060000007e640ab30000000473424954080808087c08648800000370494441545885ed97cd4beb4c14871fabb64d66504b5b53ad284a515044d18545f01f565444772a7e8b5f4b1515515cccee2e14d3b4a475bc0b5b69ec57d27b37efcbfd4116ed647e7966cee49c13f8a7ff893a5a8c77017d40b8fcdb055e8152c0e704f6e90c6056b9bfbb6cacdb84f2e513f263767c7cac2e2f2f55792c5c1eeb0a0a15c4a7512813d566524a7a7b7b01181d1d4d97ef69158e1aa8263ebf7e4e6eb4636180a3a3232584209148904824e8e9e9e1e5e5c5cf8a3d50151fcbb288c562f57c6ad408cc05585a5a4a472211bababa08854244a3514cd3e4f9f9b9199c07eae0e04099a68965590821d05ad3d1d1c1c8c848f58ed5a851283de64f4f4f4a4a89699a00388e836ddb8c8d8dfd0c2bd5f3f6f7f7959492818101a494944a5f518fc7e32d8f43b374e1817b7c7cac0b97c9647eae3c0cb0b7b7a7a494a452290f543299f4754603e5b1878787ba70e3e3e3e9ea49bbbbbb75a12ccbf2fbe2b404ab81bbbfbf57524a0cc300209fcf63db3613131369809d9d1d25a5c4b22ca4947c7c7c00904aa57c43f905ab81bbbbbb5342080f5c2e97e3eded0d804422e1811a1c1c0c041504ac06eef6f6560921104200502c16715d97502844381ca6582c0230343414182a28580ddcf5f5b58ac562df3b5791ebbab8aecbf0f0705b50d0388ff9d2ebeb2b854201ad75ddeb4f1404ccb35b5b5b5baaf270d77529140a140a055cf72b6b68adb9b9b969a7be026d1efecdcdcdef122384f84e0715452211e02b9de47239e6e6e60287d4cf8e79a03636369461182493490cc3c0755db4d664329974269349e772396cdb466b4d341ac5300caeaeae02ef5c2b300fd4fafa7a5da8ea043b3333937e7f7faf81bbb8b80804e7bb24adadad292104fdfdfd9ef04d4e4ed62d49e7e7e7ca344d4f95701c878585853f2a491ea8d5d555258420994c2284f84e9c5353534d8bf8d9d999324dd393881dc7219bcdb6846b14ca6ff3959515651806f1781cc33028168b68adeb4195cad76bf93fb2d96cdab66d1cc7416b4d2412c1300c4e4f4f7f86b5464d1bc5e5e565659a2695245a2a95f8fcfc647a7abad98a3d708b8b8b69dbb6c9e7f368ade9ececc4344d4e4e4e9a368a2d5bebeded6dd5d7d74777773700b3b3b36db5d6952e36140ad5f3a969ad7d9db1c3c3432584607e7e3e683e6adbc7f75b59a5a075af2d9f66df95ba3cb9bbeabe763e78ff96cf3ffd37f51b1081c17a70bcfc1a0000000049454e44ae426082"

    sput-object v0, Lcom/naver/glink/android/sdk/login/neoid/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FLandroid/content/Context;)F
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)I
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method
