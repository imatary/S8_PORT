.class Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$7;
.super Ljava/lang/Object;
.source "EffectLevelSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->refreshMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$7;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "5015"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
