.class Lcom/android/phone/operator/usa/UsCdmaCallForwarding$1;
.super Ljava/lang/Object;
.source "UsCdmaCallForwarding.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/UsCdmaCallForwarding;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$1;->this$0:Lcom/android/phone/operator/usa/UsCdmaCallForwarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$1;->this$0:Lcom/android/phone/operator/usa/UsCdmaCallForwarding;

    const-string/jumbo v1, "activatePreference clicked"

    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->-wrap0(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/UsCdmaCallForwarding$1;->this$0:Lcom/android/phone/operator/usa/UsCdmaCallForwarding;

    invoke-static {v0, v2}, Lcom/android/phone/operator/usa/UsCdmaCallForwarding;->-wrap1(Lcom/android/phone/operator/usa/UsCdmaCallForwarding;I)V

    return v2
.end method
