.class public Lcom/android/services/telephony/operator/usa/JanskyContract;
.super Ljava/lang/Object;
.source "JanskyContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/operator/usa/JanskyContract$Accounts;,
        Lcom/android/services/telephony/operator/usa/JanskyContract$Devices;,
        Lcom/android/services/telephony/operator/usa/JanskyContract$Lines;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.samsung.nsds.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/operator/usa/JanskyContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
