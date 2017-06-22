.class Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "CustomSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setAccessibilityDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v3, 0x8000

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07028f

    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValue:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    const/high16 v3, 0x10000

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    invoke-virtual {p2, v7}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_0
.end method
