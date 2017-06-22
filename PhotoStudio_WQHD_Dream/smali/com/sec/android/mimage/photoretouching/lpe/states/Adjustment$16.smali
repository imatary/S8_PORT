.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$16;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$16;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$16;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->setResetVisibility()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V

    return-void
.end method
