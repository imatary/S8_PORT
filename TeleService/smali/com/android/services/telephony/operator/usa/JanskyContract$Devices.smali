.class public final Lcom/android/services/telephony/operator/usa/JanskyContract$Devices;
.super Ljava/lang/Object;
.source "JanskyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/operator/usa/JanskyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Devices"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/services/telephony/operator/usa/JanskyContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "devices"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/operator/usa/JanskyContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildNsdsServiceStatusUri()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/android/services/telephony/operator/usa/JanskyContract$Devices;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "own_nsds_service_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
