.class Lcom/android/keyguard/LiftToActivateListener;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCachedClickableState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/keyguard/LiftToActivateListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/LiftToActivateListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/LiftToActivateListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/LiftToActivateListener;->mCachedClickableState:Z

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    if-gt v0, v2, :cond_3

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/keyguard/LiftToActivateListener;->mCachedClickableState:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
