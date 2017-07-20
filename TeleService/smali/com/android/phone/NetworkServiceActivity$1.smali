.class Lcom/android/phone/NetworkServiceActivity$1;
.super Ljava/lang/Object;
.source "NetworkServiceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkServiceActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkServiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkServiceActivity$1;->this$0:Lcom/android/phone/NetworkServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "au_customer_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkServiceActivity$1;->this$0:Lcom/android/phone/NetworkServiceActivity;

    invoke-static {v0}, Lcom/android/phone/NetworkServiceActivity;->-wrap0(Lcom/android/phone/NetworkServiceActivity;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
