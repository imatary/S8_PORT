.class Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;
.super Landroid/database/ContentObserver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->-get2(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->-wrap1(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
