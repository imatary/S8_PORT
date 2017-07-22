.class public Lcom/android/phone/IccPanel;
.super Landroid/app/Dialog;
.source "IccPanel.java"


# instance fields
.field private mSemStatusBarManager:Landroid/app/SemStatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0e000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/IccPanel;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string/jumbo v2, "sem_statusbar"

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemStatusBarManager;

    iput-object v2, p0, Lcom/android/phone/IccPanel;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/IccPanel;->requestWindowFeature(I)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const/high16 v0, 0x1200000

    iget-object v1, p0, Lcom/android/phone/IccPanel;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/SemStatusBarManager;->disable(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/android/phone/IccPanel;->mSemStatusBarManager:Landroid/app/SemStatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->disable(I)V

    return-void
.end method
