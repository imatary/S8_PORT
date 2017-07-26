.class Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "DreamToolsMainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->inflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$000(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    const v2, 0x8000

    if-ne p2, v2, :cond_0

    :try_start_0
    const-string/jumbo v1, ""

    const-string/jumbo v0, "button"

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$600(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-ne p1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$700(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_BUTTON_SCREEN_TOUCH_LOCK_22:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "button"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    monitor-exit v3

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$800(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-ne p1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$700(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_BODY_SCREENSHOT:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "button"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$900(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-ne p1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->access$700(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_BODY_RECORD:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "button"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
