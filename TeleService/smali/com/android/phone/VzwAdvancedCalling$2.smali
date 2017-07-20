.class Lcom/android/phone/VzwAdvancedCalling$2;
.super Ljava/lang/Object;
.source "VzwAdvancedCalling.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VzwAdvancedCalling;->enableAdvCallSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VzwAdvancedCalling;


# direct methods
.method constructor <init>(Lcom/android/phone/VzwAdvancedCalling;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwAdvancedCalling$2;->this$0:Lcom/android/phone/VzwAdvancedCalling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const-string/jumbo v2, "VzwAdvancedCalling"

    const-string/jumbo v3, " Inside onPreferenceClick"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.phone.action.VZW_ADV_CALLING_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling$2;->this$0:Lcom/android/phone/VzwAdvancedCalling;

    invoke-virtual {v2, v1}, Lcom/android/phone/VzwAdvancedCalling;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method
