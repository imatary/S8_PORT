.class public Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlUserHandleWrapper;
.super Ljava/lang/Object;
.source "SdlUserHandleWrapper.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/libinterface/UserHandleInterface;


# static fields
.field public static final USER_CURRENT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x2

    sput v0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlUserHandleWrapper;->USER_CURRENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public myUserId()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method
