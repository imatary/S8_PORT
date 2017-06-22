.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$2;
.super Ljava/lang/Object;
.source "SpenSettingEraserLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->requestDisallowInterceptTouchEvent(Z)V

    return v1
.end method
