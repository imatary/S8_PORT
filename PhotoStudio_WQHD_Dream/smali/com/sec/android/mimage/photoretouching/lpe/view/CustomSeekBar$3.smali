.class Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;
.super Ljava/lang/Object;
.source "CustomSeekBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

.field final synthetic val$progressRatio:F


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;F)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->val$progressRatio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v5

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mPreX:F
    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->access$302(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;F)F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setPressed(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getProgress()I

    move-result v2

    int-to-float v0, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mPreX:F
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)F

    move-result v3

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->val$progressRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setProgress(I)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mPreX:F
    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->access$302(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;F)F

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mPreX:F
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)F

    move-result v3

    sub-float v3, v1, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->val$progressRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setProgress(I)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setPressed(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
