.class public Lcom/samsung/android/media/face/SemFace;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/face/SemFace$AgeCategory;,
        Lcom/samsung/android/media/face/SemFace$ExpressionCategory;,
        Lcom/samsung/android/media/face/SemFace$GenderCategory;,
        Lcom/samsung/android/media/face/SemFace$PoseCategory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pose:I

.field private rect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/media/face/SemFace$1;

    invoke-direct {v0}, Lcom/samsung/android/media/face/SemFace$1;-><init>()V

    sput-object v0, Lcom/samsung/android/media/face/SemFace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iput p5, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iput p2, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/face/SemFace;->readFromParcel(Landroid/os/Parcel;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create object when input Parcel is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPose()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCoordinatesProper()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public setPose(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public setRectBottomCoordinate(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setRectCoordinatesLimit(IIII)V
    .locals 3

    if-le p1, p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid dimension of face bounding box information ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gt p2, p4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v1, p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget p1, v1, Landroid/graphics/Rect;->left:I

    :cond_2
    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-lt v1, p2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget p2, v1, Landroid/graphics/Rect;->top:I

    :cond_3
    iput p2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v1, p3, :cond_4

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget p3, v1, Landroid/graphics/Rect;->right:I

    :cond_4
    iput p3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v1, p4, :cond_5

    iget-object v1, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iget p4, v1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setRectLeftCoordinate(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public setRectRightCoordinate(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public setRectTopCoordinate(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/media/face/SemFace;->pose:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot write to Parcel because it is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
