.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$2;
.super Ljava/lang/Object;
.source "SpenSettingRemoverLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->requestDisallowInterceptTouchEvent(Z)V

    return v1
.end method
