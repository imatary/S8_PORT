.class Lcom/android/phone/callsettings/IpCall$ActionModeCallback$4$2;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall$ActionModeCallback$4;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/phone/callsettings/IpCall$ActionModeCallback$4;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall$ActionModeCallback$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$4$2;->this$2:Lcom/android/phone/callsettings/IpCall$ActionModeCallback$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$4$2;->this$2:Lcom/android/phone/callsettings/IpCall$ActionModeCallback$4;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$4;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->-get19(Lcom/android/phone/callsettings/IpCall;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$4$2;->this$2:Lcom/android/phone/callsettings/IpCall$ActionModeCallback$4;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$ActionModeCallback$4;->this$1:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
