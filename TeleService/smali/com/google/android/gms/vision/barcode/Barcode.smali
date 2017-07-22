.class public Lcom/google/android/gms/vision/barcode/Barcode;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/barcode/Barcode$Address;,
        Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;,
        Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;,
        Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;,
        Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;,
        Lcom/google/android/gms/vision/barcode/Barcode$Email;,
        Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;,
        Lcom/google/android/gms/vision/barcode/Barcode$PersonName;,
        Lcom/google/android/gms/vision/barcode/Barcode$Phone;,
        Lcom/google/android/gms/vision/barcode/Barcode$Sms;,
        Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;,
        Lcom/google/android/gms/vision/barcode/Barcode$WiFi;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/vision/barcode/zzb;


# instance fields
.field public calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

.field public contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

.field public cornerPoints:[Landroid/graphics/Point;

.field public displayValue:Ljava/lang/String;

.field public driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

.field public email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

.field public format:I

.field public geoPoint:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

.field public phone:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

.field public rawValue:Ljava/lang/String;

.field public sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

.field public url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

.field public valueFormat:I

.field final versionCode:I

.field public wifi:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/vision/barcode/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode;->CREATOR:Lcom/google/android/gms/vision/barcode/zzb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/vision/barcode/Barcode;->versionCode:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;Lcom/google/android/gms/vision/barcode/Barcode$Email;Lcom/google/android/gms/vision/barcode/Barcode$Phone;Lcom/google/android/gms/vision/barcode/Barcode$Sms;Lcom/google/android/gms/vision/barcode/Barcode$WiFi;Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/vision/barcode/Barcode;->format:I

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/vision/barcode/Barcode;->displayValue:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    iput-object p6, p0, Lcom/google/android/gms/vision/barcode/Barcode;->cornerPoints:[Landroid/graphics/Point;

    iput-object p7, p0, Lcom/google/android/gms/vision/barcode/Barcode;->email:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    iput-object p8, p0, Lcom/google/android/gms/vision/barcode/Barcode;->phone:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iput-object p9, p0, Lcom/google/android/gms/vision/barcode/Barcode;->sms:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    iput-object p10, p0, Lcom/google/android/gms/vision/barcode/Barcode;->wifi:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    iput-object p11, p0, Lcom/google/android/gms/vision/barcode/Barcode;->url:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    iput-object p12, p0, Lcom/google/android/gms/vision/barcode/Barcode;->geoPoint:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    iput-object p13, p0, Lcom/google/android/gms/vision/barcode/Barcode;->calendarEvent:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iput-object p14, p0, Lcom/google/android/gms/vision/barcode/Barcode;->contactInfo:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    iput-object p15, p0, Lcom/google/android/gms/vision/barcode/Barcode;->driverLicense:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode;->CREATOR:Lcom/google/android/gms/vision/barcode/zzb;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode;->CREATOR:Lcom/google/android/gms/vision/barcode/zzb;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/vision/barcode/zzb;->zza(Lcom/google/android/gms/vision/barcode/Barcode;Landroid/os/Parcel;I)V

    return-void
.end method
