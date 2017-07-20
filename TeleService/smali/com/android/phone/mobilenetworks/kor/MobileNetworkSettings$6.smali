.class Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$6;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->showLteRoamingOnDialog(Landroid/preference/TwoStatePreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$6;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setLTEModeOn(Z)V

    return-void
.end method
