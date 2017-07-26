.class public Lcom/naver/glink/android/sdk/StartTo;
.super Ljava/lang/Object;
.source "StartTo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/StartTo$To;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/naver/glink/android/sdk/StartTo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/naver/glink/android/sdk/StartTo$To;

.field public final b:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

.field public final c:I

.field public final d:I

.field public final e:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo$1;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/StartTo$1;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/StartTo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/naver/glink/android/sdk/StartTo$To;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;IILcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/StartTo;->a:Lcom/naver/glink/android/sdk/StartTo$To;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/StartTo;->b:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    iput p3, p0, Lcom/naver/glink/android/sdk/StartTo;->c:I

    iput p4, p0, Lcom/naver/glink/android/sdk/StartTo;->d:I

    iput-object p5, p0, Lcom/naver/glink/android/sdk/StartTo;->e:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/naver/glink/android/sdk/StartTo$To;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;IILcom/naver/glink/android/sdk/ui/write/model/WritingArticle;Lcom/naver/glink/android/sdk/StartTo$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/naver/glink/android/sdk/StartTo;-><init>(Lcom/naver/glink/android/sdk/StartTo$To;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;IILcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)V

    return-void
.end method

.method static a()Lcom/naver/glink/android/sdk/StartTo;
    .locals 6

    const/4 v3, -0x1

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo;

    sget-object v1, Lcom/naver/glink/android/sdk/StartTo$To;->ALL_VIDEOS:Lcom/naver/glink/android/sdk/StartTo$To;

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->MENU:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/StartTo;-><init>(Lcom/naver/glink/android/sdk/StartTo$To;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;IILcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)V

    return-object v0
.end method

.method static a(I)Lcom/naver/glink/android/sdk/StartTo;
    .locals 6

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo;

    sget-object v1, Lcom/naver/glink/android/sdk/StartTo$To;->ARTICLE:Lcom/naver/glink/android/sdk/StartTo$To;

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->HOME:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const/4 v3, -0x1

    const/4 v5, 0x0

    move v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/StartTo;-><init>(Lcom/naver/glink/android/sdk/StartTo$To;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;IILcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)V

    return-object v0
.end method

.method public static a(Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;)Lcom/naver/glink/android/sdk/StartTo;
    .locals 6

    const/4 v3, -0x1

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo;

    sget-object v1, Lcom/naver/glink/android/sdk/StartTo$To;->JUST_TAB:Lcom/naver/glink/android/sdk/StartTo$To;

    const/4 v5, 0x0

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/StartTo;-><init>(Lcom/naver/glink/android/sdk/StartTo$To;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;IILcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)V

    return-object v0
.end method

.method static a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)Lcom/naver/glink/android/sdk/StartTo;
    .locals 6

    const/4 v3, -0x1

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo;

    sget-object v1, Lcom/naver/glink/android/sdk/StartTo$To;->WRITE:Lcom/naver/glink/android/sdk/StartTo$To;

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->HOME:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    move v4, v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/StartTo;-><init>(Lcom/naver/glink/android/sdk/StartTo$To;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;IILcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)V

    return-object v0
.end method

.method static b()Lcom/naver/glink/android/sdk/StartTo;
    .locals 6

    const/4 v3, -0x1

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo;

    sget-object v1, Lcom/naver/glink/android/sdk/StartTo$To;->ALL_IMAGES:Lcom/naver/glink/android/sdk/StartTo$To;

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->MENU:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/StartTo;-><init>(Lcom/naver/glink/android/sdk/StartTo$To;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;IILcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)V

    return-object v0
.end method

.method static b(I)Lcom/naver/glink/android/sdk/StartTo;
    .locals 6

    new-instance v0, Lcom/naver/glink/android/sdk/StartTo;

    sget-object v1, Lcom/naver/glink/android/sdk/StartTo$To;->MENU:Lcom/naver/glink/android/sdk/StartTo$To;

    sget-object v2, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->MENU:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/StartTo;-><init>(Lcom/naver/glink/android/sdk/StartTo$To;Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;IILcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/StartTo;->a:Lcom/naver/glink/android/sdk/StartTo$To;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/StartTo;->b:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget v0, p0, Lcom/naver/glink/android/sdk/StartTo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/naver/glink/android/sdk/StartTo;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/StartTo;->e:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
