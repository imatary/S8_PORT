.class public Lcom/android/bluetooth/gatt/GattDbElement;
.super Ljava/lang/Object;
.source "GattDbElement.java"


# static fields
.field public static final TYPE_CHARACTERISTIC:I = 0x3

.field public static final TYPE_DESCRIPTOR:I = 0x4

.field public static final TYPE_INCLUDED_SERVICE:I = 0x2

.field public static final TYPE_PRIMARY_SERVICE:I = 0x0

.field public static final TYPE_SECONDARY_SERVICE:I = 0x1


# instance fields
.field public attributeHandle:I

.field public endHandle:I

.field public id:I

.field public properties:I

.field public startHandle:I

.field public type:I

.field public uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
