.class public Lcom/samsung/android/devicecog/gallery/touchevent/ChoiceActivityDCTouchEvent;
.super Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;
.source "ChoiceActivityDCTouchEvent.java"


# instance fields
.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/touchevent/AbstractDCTouchEvent;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkDCTouchEventEnable(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ChoiceActivityDCTouchEvent;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ChoiceActivityDCTouchEvent;->mView:Landroid/view/View;

    const-string/jumbo v0, "ScrollUp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setCurrentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/touchevent/ChoiceActivityDCTouchEvent;->mView:Landroid/view/View;

    return-void
.end method
