.class public final enum Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;
.super Ljava/lang/Enum;
.source "ImageEditView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

.field public static final enum DEFAULT:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

.field public static final enum ROUND:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    const-string/jumbo v1, "DEFAULT"

    const-string/jumbo v3, "default"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->DEFAULT:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    new-instance v5, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    const-string/jumbo v6, "ROUND"

    const-string/jumbo v8, "round"

    move v7, v4

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v5, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->ROUND:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->DEFAULT:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->ROUND:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->$VALUES:[Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->type:Ljava/lang/String;

    iput p4, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->aspectX:I

    iput p5, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->aspectY:I

    return-void
.end method

.method public static findImageType(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;
    .locals 5

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->values()[Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->DEFAULT:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->$VALUES:[Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    return-object v0
.end method


# virtual methods
.method public getAspectX()I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->aspectX:I

    return v0
.end method

.method public getAspectY()I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->aspectY:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->type:Ljava/lang/String;

    return-object v0
.end method
