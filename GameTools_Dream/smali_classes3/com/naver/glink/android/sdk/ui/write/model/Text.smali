.class public Lcom/naver/glink/android/sdk/ui/write/model/Text;
.super Lcom/naver/glink/android/sdk/ui/write/model/Content;
.source "Text.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Text;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/model/Text$1;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/write/model/Text$1;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/write/model/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/Content;-><init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;->htmlTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/model/Content;-><init>(Lcom/naver/glink/android/sdk/api/Responses$Property$ResolvedArticle;)V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/Content;-><init>(Ljava/util/Map;)V

    const-string/jumbo v0, "content"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a:Ljava/lang/String;

    return-void
.end method

.method b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "mediaType"

    const-string/jumbo v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "htmlTag"

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "text"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "content"

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
