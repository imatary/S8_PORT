.class Lcom/android/phone/callsettings/SecAutoRejectList$19;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;->drawSecUnknownItem(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$19;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$19;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "unknown_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$19;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "drawUnknownItem, setOnCheckedChangeListener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", unknownMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->-wrap4(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$19;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    const v3, 0x7f0d024f

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList$19;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    const v4, 0x7f0d02a3

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "unknown_mode"

    int-to-long v6, v0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$19;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "unknown_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
