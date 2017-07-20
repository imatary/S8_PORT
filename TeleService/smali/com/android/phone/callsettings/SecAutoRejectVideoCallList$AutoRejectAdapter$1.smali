.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;
.super Ljava/lang/Object;
.source "SecAutoRejectVideoCallList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->drawUnknownItem(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "drawUnknownItem, setOnCheckedChangeListener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", item.checked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v4, v4, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->-wrap2(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v2, v2, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-ne v0, v2, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-lez v3, :cond_3

    :goto_1
    iput v1, v2, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->this$1:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "unknown_videocall_mode"

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectAdapter$1;->val$item:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;

    iget v3, v3, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method
