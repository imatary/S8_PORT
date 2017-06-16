.class Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$8;
.super Ljava/lang/Object;
.source "Advance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->updateCurveColorDependOnImage([III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

.field final synthetic val$finalVal:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$8;->val$finalVal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const v1, 0x7f0e038a

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$8;->val$finalVal:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02020a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->mRangeSeekBar:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;->access$1300(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020209

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
