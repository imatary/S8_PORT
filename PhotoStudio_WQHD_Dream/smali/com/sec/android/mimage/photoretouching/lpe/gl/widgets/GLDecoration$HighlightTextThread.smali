.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;
.super Ljava/lang/Thread;
.source "GLDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HighlightTextThread"
.end annotation


# instance fields
.field private EditableAreaRenderDelay:I

.field private mNumBlinks:I

.field public volatile showHighLight:Z

.field private volatile stopThread:Z

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;II)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->stopThread:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->showHighLight:Z

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->mNumBlinks:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->mNumBlinks:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->showHighLight:Z

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->EditableAreaRenderDelay:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->stopThread:Z

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->mNumBlinks:I

    if-ge v1, v2, :cond_0

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->showHighLight:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread$1;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->EditableAreaRenderDelay:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->showHighLight:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread$2;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->EditableAreaRenderDelay:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->stopThread:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopHighLight()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration$HighlightTextThread;->stopThread:Z

    return-void
.end method
