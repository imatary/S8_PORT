.class Lcom/android/services/telephony/sip/SipSettings$4;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipSettings;->retrieveSipLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/sip/SipProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipSettings$4;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)I
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$4;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    invoke-static {v0, p1}, Lcom/android/services/telephony/sip/SipSettings;->-wrap1(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$4;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    invoke-static {v1, p2}, Lcom/android/services/telephony/sip/SipSettings;->-wrap1(Lcom/android/services/telephony/sip/SipSettings;Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/net/sip/SipProfile;

    check-cast p2, Landroid/net/sip/SipProfile;

    invoke-virtual {p0, p1, p2}, Lcom/android/services/telephony/sip/SipSettings$4;->compare(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)I

    move-result v0

    return v0
.end method
