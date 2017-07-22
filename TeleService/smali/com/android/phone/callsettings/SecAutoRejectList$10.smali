.class Lcom/android/phone/callsettings/SecAutoRejectList$10;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

.field final synthetic val$categoryCheckedItems:[Z


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->val$categoryCheckedItems:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->val$categoryCheckedItems:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "unknown_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$10;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-wrap5(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    return-void
.end method
