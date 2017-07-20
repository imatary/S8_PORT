.class Lcom/android/phone/callsettings/MultiNumberSettings$1;
.super Ljava/lang/Object;
.source "MultiNumberSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/MultiNumberSettings;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/MultiNumberSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/MultiNumberSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/MultiNumberSettings$1;->this$0:Lcom/android/phone/callsettings/MultiNumberSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings$1;->this$0:Lcom/android/phone/callsettings/MultiNumberSettings;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/MultiNumberSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sub_number_enable_cmcc"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings$1;->this$0:Lcom/android/phone/callsettings/MultiNumberSettings;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/MultiNumberSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sub_number_enable_cmcc"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "MultiNumber"

    const-string/jumbo v2, "switch is on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings$1;->this$0:Lcom/android/phone/callsettings/MultiNumberSettings;

    invoke-virtual {v1, p2}, Lcom/android/phone/callsettings/MultiNumberSettings;->setTextViewLabel(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings$1;->this$0:Lcom/android/phone/callsettings/MultiNumberSettings;

    invoke-static {v1}, Lcom/android/phone/callsettings/MultiNumberSettings;->-wrap0(Lcom/android/phone/callsettings/MultiNumberSettings;)V

    return-void

    :cond_1
    if-nez p2, :cond_0

    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings$1;->this$0:Lcom/android/phone/callsettings/MultiNumberSettings;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/MultiNumberSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sub_number_enable_cmcc"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "MultiNumber"

    const-string/jumbo v2, "switch is off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
