.class public Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$enableSettingViewRunnable;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "enableSettingViewRunnable"
.end annotation


# instance fields
.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindLayout(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$enableSettingViewRunnable;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$enableSettingViewRunnable;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$enableSettingViewRunnable;->mView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$enableSettingViewRunnable;->mView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$enableSettingViewRunnable;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
