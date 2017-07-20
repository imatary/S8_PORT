.class Lcom/android/phone/RoamingSettingActivity$1;
.super Ljava/lang/Object;
.source "RoamingSettingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RoamingSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/RoamingSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RoamingSettingActivity$1;->this$0:Lcom/android/phone/RoamingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const v0, 0x7f100253

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RoamingSettingActivity$1;->this$0:Lcom/android/phone/RoamingSettingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/RoamingSettingActivity;->-set0(Lcom/android/phone/RoamingSettingActivity;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/RoamingSettingActivity$1;->this$0:Lcom/android/phone/RoamingSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/RoamingSettingActivity;->-set0(Lcom/android/phone/RoamingSettingActivity;I)I

    goto :goto_0
.end method
