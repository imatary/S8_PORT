.class public Lcom/naver/glink/android/sdk/model/Menu;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "Menu.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/model/Menu$Type;
    }
.end annotation


# static fields
.field public static final ALL_ARTICLES_MENU_ID:I = 0x0

.field public static final ALL_IMAGES_MENU_ID:I = -0x3

.field public static final ALL_VIDEOS_MENU_ID:I = -0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/naver/glink/android/sdk/model/Menu;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_MENU_ID:I = -0x1


# instance fields
.field private hasNewArticle:Z

.field private menuId:I

.field private menuName:Ljava/lang/String;

.field private type:Lcom/naver/glink/android/sdk/model/Menu$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/model/Menu$1;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/model/Menu$1;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/model/Menu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    sget-object v0, Lcom/naver/glink/android/sdk/model/Menu$Type;->ARTICLES:Lcom/naver/glink/android/sdk/model/Menu$Type;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/model/Menu;->type:Lcom/naver/glink/android/sdk/model/Menu$Type;

    return-void
.end method

.method static synthetic access$002(Lcom/naver/glink/android/sdk/model/Menu;Lcom/naver/glink/android/sdk/model/Menu$Type;)Lcom/naver/glink/android/sdk/model/Menu$Type;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/model/Menu;->type:Lcom/naver/glink/android/sdk/model/Menu$Type;

    return-object p1
.end method

.method static synthetic access$102(Lcom/naver/glink/android/sdk/model/Menu;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/model/Menu;->menuId:I

    return p1
.end method

.method static synthetic access$202(Lcom/naver/glink/android/sdk/model/Menu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/model/Menu;->menuName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/naver/glink/android/sdk/model/Menu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/model/Menu;->hasNewArticle:Z

    return p1
.end method

.method public static allArticles(Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/model/Menu$Type;->ARTICLES:Lcom/naver/glink/android/sdk/model/Menu$Type;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/naver/glink/android/sdk/model/Menu;->allMenu(Lcom/naver/glink/android/sdk/model/Menu$Type;ILjava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    return-object v0
.end method

.method public static allImages(Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/model/Menu$Type;->IMAGES:Lcom/naver/glink/android/sdk/model/Menu$Type;

    const/4 v1, -0x3

    invoke-static {v0, v1, p0}, Lcom/naver/glink/android/sdk/model/Menu;->allMenu(Lcom/naver/glink/android/sdk/model/Menu$Type;ILjava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    return-object v0
.end method

.method private static allMenu(Lcom/naver/glink/android/sdk/model/Menu$Type;ILjava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/model/Menu;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/model/Menu;-><init>()V

    iput-object p0, v0, Lcom/naver/glink/android/sdk/model/Menu;->type:Lcom/naver/glink/android/sdk/model/Menu$Type;

    iput p1, v0, Lcom/naver/glink/android/sdk/model/Menu;->menuId:I

    iput-object p2, v0, Lcom/naver/glink/android/sdk/model/Menu;->menuName:Ljava/lang/String;

    return-object v0
.end method

.method public static allVideos(Ljava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/model/Menu$Type;->VIDEOS:Lcom/naver/glink/android/sdk/model/Menu$Type;

    const/4 v1, -0x2

    invoke-static {v0, v1, p0}, Lcom/naver/glink/android/sdk/model/Menu;->allMenu(Lcom/naver/glink/android/sdk/model/Menu$Type;ILjava/lang/String;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuId()I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/model/Menu;->menuId:I

    return v0
.end method

.method public getMenuName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Menu;->menuName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/naver/glink/android/sdk/model/Menu$Type;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Menu;->type:Lcom/naver/glink/android/sdk/model/Menu$Type;

    return-object v0
.end method

.method public isHasNewArticle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/model/Menu;->hasNewArticle:Z

    return v0
.end method

.method public setMenuName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/model/Menu;->menuName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Menu;->type:Lcom/naver/glink/android/sdk/model/Menu$Type;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget v0, p0, Lcom/naver/glink/android/sdk/model/Menu;->menuId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/model/Menu;->menuName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/model/Menu;->hasNewArticle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
