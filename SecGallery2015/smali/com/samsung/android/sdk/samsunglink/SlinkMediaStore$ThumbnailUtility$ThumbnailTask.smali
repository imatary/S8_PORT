.class Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailTask"
.end annotation


# instance fields
.field public mActualHeight:I

.field public mActualWidth:I

.field private mCancelled:Z

.field public mFullHeight:I

.field public mFullWidth:I

.field private final mHashKey:Ljava/lang/String;

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>(JJII)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mCancelled:Z

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mActualWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mActualHeight:I

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mFullWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mFullHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mWidth:I

    iput p5, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHeight:I

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mHashKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mCancelled:Z

    return v0
.end method

.method static synthetic access$2(Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$ThumbnailUtility$ThumbnailTask;->mCancelled:Z

    return-void
.end method
