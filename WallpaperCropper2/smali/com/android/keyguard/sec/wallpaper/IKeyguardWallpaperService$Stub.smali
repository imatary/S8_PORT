.class public abstract Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;
.super Landroid/os/Binder;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_getUnlockDelay:I = 0x6

.field static final TRANSACTION_handleUnlock:I = 0x4

.field static final TRANSACTION_sendTouchEvent:I = 0x2

.field static final TRANSACTION_setContextualWallpaper:I = 0x3

.field static final TRANSACTION_setKeyguardWallpaperShowCallback:I = 0x7

.field static final TRANSACTION_showUnlockAffordance:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p0, p0, v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    instance-of v1, v0, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_1
    const-string/jumbo v0, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->executeCommand(I)V

    return v4

    :sswitch_2
    const-string/jumbo v1, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->sendTouchEvent(Landroid/view/MotionEvent;)V

    return v4

    :cond_0
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    return v4

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->handleUnlock(Landroid/view/MotionEvent;)V

    return v4

    :cond_2
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    goto :goto_2

    :sswitch_5
    const-string/jumbo v1, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_3

    :goto_3
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    return v4

    :cond_3
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_3

    :sswitch_6
    const-string/jumbo v0, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->getUnlockDelay()J

    move-result-wide v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v4

    :sswitch_7
    const-string/jumbo v0, "com.android.keyguard.sec.wallpaper.IKeyguardWallpaperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/IKeyguardShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardShowCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->setKeyguardWallpaperShowCallback(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    return v4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
