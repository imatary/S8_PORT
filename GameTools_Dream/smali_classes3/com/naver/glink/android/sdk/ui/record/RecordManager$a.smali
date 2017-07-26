.class Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;
.super Landroid/media/projection/MediaProjection$Callback;
.source "RecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/record/RecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;


# direct methods
.method private constructor <init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Lcom/naver/glink/android/sdk/ui/record/RecordManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;-><init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    const-string/jumbo v0, "naverRecord"

    const-string/jumbo v1, "record MediaProjectionCallback onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
