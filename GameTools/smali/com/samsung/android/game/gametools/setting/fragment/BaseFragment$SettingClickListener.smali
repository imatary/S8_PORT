.class public Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$SettingClickListener;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$SettingClickListener;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$enableSettingViewRunnable;

    invoke-direct {v1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$enableSettingViewRunnable;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$enableSettingViewRunnable;->bindLayout(Landroid/view/View;)V

    sget v2, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->TOUCH_DELAY_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method
