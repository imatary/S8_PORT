.class Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;
.super Ljava/lang/Object;
.source "PortraitHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->checkFacesForEvent(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;

.field final synthetic val$fromPortrait:Z

.field final synthetic val$mData:[I

.field final synthetic val$mEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

.field final synthetic val$mHeight:I

.field final synthetic val$mWidth:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;[IIILcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->val$mData:[I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->val$mWidth:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->val$mHeight:I

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->val$mEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iput-boolean p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->val$fromPortrait:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->val$mData:[I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->val$mEvent:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;->setFaceDetected(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->val$fromPortrait:Z

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->updateUI(ZZ)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->val$mData:[I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->val$mWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;->val$mHeight:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->checkFace([III)Z

    move-result v0

    goto :goto_0
.end method
