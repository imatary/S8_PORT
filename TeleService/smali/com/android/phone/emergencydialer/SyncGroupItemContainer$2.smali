.class Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;
.super Ljava/lang/Object;
.source "SyncGroupItemContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/emergencydialer/SyncGroupItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private SCROLL_BORDER_TIME:I

.field final synthetic this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;


# direct methods
.method constructor <init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->SCROLL_BORDER_TIME:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-set4(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;I)I

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get10(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get7(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get3(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get8(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I

    move-result v2

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get3(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get2(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get9(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Ljava/lang/Runnable;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->SCROLL_BORDER_TIME:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1, v6}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-wrap1(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get10(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get6(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get3(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get8(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I

    move-result v2

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get3(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get2(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get9(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Ljava/lang/Runnable;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->SCROLL_BORDER_TIME:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get2(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get9(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)Ljava/lang/Runnable;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$2;->SCROLL_BORDER_TIME:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
