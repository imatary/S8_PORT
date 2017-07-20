.class public abstract Lcom/sec/ims/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lcom/sec/ims/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IImsService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.IImsService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/IImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.sec.ims.IImsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/ims/IImsService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/ims/IImsService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/sec/ims/IImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v44

    return v44

    :sswitch_0
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_1
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/ImsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ImsEventListener;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/sec/ims/IImsService$Stub;->registerCallback(Lcom/sec/ims/ImsEventListener;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_2
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/ImsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ImsEventListener;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/ims/IImsService$Stub;->unregisterCallback(Lcom/sec/ims/ImsEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_3
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isVolteEnabledFromNetwork()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_0

    const/16 v44, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_0
    const/16 v44, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v41

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v44, 0x1

    return v44

    :sswitch_5
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v37

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_1

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/ImsRegistration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/16 v44, 0x1

    return v44

    :cond_1
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_6
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile2;

    move-result-object v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v42

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v44, 0x1

    return v44

    :sswitch_7
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/ims/IImsService$Stub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_8
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/ims/IImsService$Stub;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_9
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getClass()Ljava/lang/Class;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v43

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->registerProfile(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_a
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getClass()Ljava/lang/Class;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v43

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_2

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/IImsService$Stub;->deregisterProfile(Ljava/util/List;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_2
    const/16 v26, 0x0

    goto :goto_2

    :sswitch_b
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->setIsimLoaded()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_c
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->setSimRefreshed()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_d
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isRegistered()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_3

    const/16 v44, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_3
    const/16 v44, 0x0

    goto :goto_3

    :sswitch_e
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/ims/IImsService$Stub;->setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_f
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_4

    sget-object v44, Lcom/sec/ims/settings/ImsProfile2;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/ims/settings/ImsProfile2;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile2;)I

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    :sswitch_10
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->deregisterAdhocProfile(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_11
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->sendTryRegister()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_12
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_5

    sget-object v44, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/ims/settings/ImsProfile;

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_5
    const/16 v18, 0x0

    goto :goto_5

    :sswitch_13
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->sendDeregister(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_14
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_6

    const/16 v22, 0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->suspendRegister(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_6
    const/16 v22, 0x0

    goto :goto_6

    :sswitch_15
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/IImsService$Stub;->setActiveImpu(Ljava/lang/String;Ljava/lang/String;)I

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_16
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/IImsService$Stub;->setActiveMsisdn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_17
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_7

    sget-object v44, Lcom/sec/ims/settings/ImsProfile2;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/ims/settings/ImsProfile2;

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->updateRegistration(Lcom/sec/ims/settings/ImsProfile2;)I

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_7
    const/16 v17, 0x0

    goto :goto_7

    :sswitch_18
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->getNetworkType(I)I

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_19
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/im/IImSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/im/IImSessionListener;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_1a
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/im/IImSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/im/IImSessionListener;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_1b
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/ims/IImsService$Stub;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_1c
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/ims/IImsService$Stub;->unregisterImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_1d
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/IAutoConfigurationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IAutoConfigurationListener;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/ims/IImsService$Stub;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_1e
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/IAutoConfigurationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IAutoConfigurationListener;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/ims/IImsService$Stub;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_1f
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/ims/IImsService$Stub;->registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_20
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/ims/IImsService$Stub;->unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_21
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/IDialogSubscribeStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogSubscribeStatusListener;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/ims/IImsService$Stub;->registerDialogSubscribeStatusListener(Lcom/sec/ims/IDialogSubscribeStatusListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_22
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/IDialogSubscribeStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogSubscribeStatusListener;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/ims/IImsService$Stub;->unregisterDialogSubscribeStatusListener(Lcom/sec/ims/IDialogSubscribeStatusListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_23
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getLastDialogEvent()Lcom/sec/ims/DialogEvent;

    move-result-object v36

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v36, :cond_8

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/DialogEvent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/16 v44, 0x1

    return v44

    :cond_8
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_24
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/IImsService$Stub;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_25
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->getMasterValue(I)I

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_26
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->getMasterStringValue(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_27
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Lcom/sec/ims/IImsService$Stub;->setProvisionedValue(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_28
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Lcom/sec/ims/IImsService$Stub;->setProvisionedStringValue(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_29
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ImsConfigListener;

    move-result-object v29

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v29

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/ims/IImsService$Stub;->getFeatureValue(IILcom/sec/ims/ImsConfigListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_2a
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ImsConfigListener;

    move-result-object v32

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v28

    move-object/from16 v3, v32

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/ims/IImsService$Stub;->setFeatureValue(IIILcom/sec/ims/ImsConfigListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_2b
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isImsEnabled()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_9

    const/16 v44, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_9
    const/16 v44, 0x0

    goto :goto_9

    :sswitch_2c
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isVoLteEnabled()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_a

    const/16 v44, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_a
    const/16 v44, 0x0

    goto :goto_a

    :sswitch_2d
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isRcsEnabled()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_b

    const/16 v44, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_b
    const/16 v44, 0x0

    goto :goto_b

    :sswitch_2e
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->isServiceEnabled(Ljava/lang/String;)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_c

    const/16 v44, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_c
    const/16 v44, 0x0

    goto :goto_c

    :sswitch_2f
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/IImsService$Stub;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_d

    const/16 v44, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_d
    const/16 v44, 0x0

    goto :goto_d

    :sswitch_30
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_e

    const/16 v22, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->enableVoLte(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_e
    const/16 v22, 0x0

    goto :goto_e

    :sswitch_31
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_f

    const/16 v22, 0x1

    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->enableRcs(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_f
    const/16 v22, 0x0

    goto :goto_f

    :sswitch_32
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_10

    const/16 v26, 0x1

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/IImsService$Stub;->enableService(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_10
    const/16 v26, 0x0

    goto :goto_10

    :sswitch_33
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_11

    const/16 v22, 0x1

    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->enableIpme(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_11
    const/16 v22, 0x0

    goto :goto_11

    :sswitch_34
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isIpmeEnabled()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_12

    const/16 v44, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_12
    const/16 v44, 0x0

    goto :goto_12

    :sswitch_35
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/IImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsDmConfigListener;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/ims/IImsService$Stub;->registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_36
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/IImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsDmConfigListener;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/ims/IImsService$Stub;->unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_37
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->setCameraDisplayOrientation(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_38
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v24

    move-object/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/ims/IImsService$Stub;->sendStillImage(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_39
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->setCameraEffect(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_3a
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->sendLiveVideo()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_3b
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_13

    const/16 v22, 0x1

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/IImsService$Stub;->captureSurfaceImage(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_13
    const/16 v22, 0x0

    goto :goto_13

    :sswitch_3c
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->IsRemotePhoneAppBg(I)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_14

    const/16 v44, 0x1

    :goto_14
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_14
    const/16 v44, 0x0

    goto :goto_14

    :sswitch_3d
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_15

    sget-object v44, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/ims/IImsService$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_15
    const/4 v7, 0x0

    goto :goto_15

    :sswitch_3e
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_16

    sget-object v44, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/ims/IImsService$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_16
    const/4 v7, 0x0

    goto :goto_16

    :sswitch_3f
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->startCamera(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_40
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->stopCamera()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_41
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->switchCamera()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_42
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_17

    const/16 v26, 0x1

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    move-object/from16 v3, v30

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/ims/IImsService$Stub;->captureImage(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_17
    const/16 v26, 0x0

    goto :goto_17

    :sswitch_43
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->holdVideoBySession(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_44
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->resumeVideoBySession(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_45
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsVideoListener;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->registerVideoListener(Lcom/sec/ims/volte2/IImsVideoListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_46
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsVideoListener;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->unregisterVideoListener(Lcom/sec/ims/volte2/IImsVideoListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_47
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_48
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->changeEPDGAudioPath(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_49
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v28

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/ims/IImsService$Stub;->startLocalRingBackTone(III)I

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_4a
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->stopLocalRingBackTone()I

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_4b
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getCallCount()[I

    move-result-object v40

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v44, 0x1

    return v44

    :sswitch_4c
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->dump()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_4d
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->setVideocallType(I)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_18

    const/16 v44, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_18
    const/16 v44, 0x0

    goto :goto_18

    :sswitch_4e
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getVideocallType()I

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_4f
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v35

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v35, :cond_19

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_19
    const/16 v44, 0x1

    return v44

    :cond_19
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    :sswitch_50
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_1a

    sget-object v44, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Lcom/sec/ims/IImsService$Stub;->updateConfigValues(Landroid/content/ContentValues;I)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_1b

    const/16 v44, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_1a
    const/4 v6, 0x0

    goto :goto_1a

    :cond_1b
    const/16 v44, 0x0

    goto :goto_1b

    :sswitch_51
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isForbidden()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_1c

    const/16 v44, 0x1

    :goto_1c
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_1c
    const/16 v44, 0x0

    goto :goto_1c

    :sswitch_52
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->hasVoLteSim()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_1d

    const/16 v44, 0x1

    :goto_1d
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_1d
    const/16 v44, 0x0

    goto :goto_1d

    :sswitch_53
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->isRegistering()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_1e

    const/16 v44, 0x1

    :goto_1e
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_1e
    const/16 v44, 0x0

    goto :goto_1e

    :sswitch_54
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->startDmConfig()I

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_55
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->finishDmConfig(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_56
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/ims/IImsService$Stub;->setRttMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_57
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/ims/IImsService$Stub;->getRttMode()I

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_58
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/ims/IImsService$Stub;->sendRttMessage(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_59
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/IRttEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IRttEventListener;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/ims/IImsService$Stub;->registerRttEventListener(Lcom/sec/ims/IRttEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_5a
    const-string/jumbo v44, "com.sec.ims.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/sec/ims/IRttEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IRttEventListener;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/ims/IImsService$Stub;->unregisterRttEventListener(Lcom/sec/ims/IRttEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
