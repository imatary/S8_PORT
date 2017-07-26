.class final Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$1;
.super Ljava/lang/Object;
.source "WritingArticle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;
    .locals 6

    new-instance v2, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;-><init>(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$1;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v2, v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v2, v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->b(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;Ljava/lang/String;)Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Content;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;Ljava/util/List;)Ljava/util/List;

    return-object v2
.end method

.method public a(I)[Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;
    .locals 1

    new-array v0, p1, [Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$1;->a(Landroid/os/Parcel;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$1;->a(I)[Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    return-object v0
.end method
