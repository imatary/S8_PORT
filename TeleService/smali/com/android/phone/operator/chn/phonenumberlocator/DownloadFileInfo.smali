.class Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;
.super Ljava/lang/Object;
.source "PhoneNumberLocatorDownloader.java"


# instance fields
.field public crc32CalculateFromData:J

.field public crc32ReadFromFile:J

.field public endmarker:J

.field public fileName:Ljava/lang/String;

.field public fileSize:J

.field public startmarker:J


# direct methods
.method constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    iput-wide v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->startmarker:J

    iput-wide v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->endmarker:J

    iput-wide v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->crc32ReadFromFile:J

    iput-wide v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->crc32CalculateFromData:J

    return-void
.end method


# virtual methods
.method public isValidFile()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->crc32ReadFromFile:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->crc32CalculateFromData:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->crc32ReadFromFile:J

    iget-wide v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->crc32CalculateFromData:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->startmarker:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->endmarker:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->startmarker:J

    iget-wide v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->endmarker:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x180

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "\nfileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nfileSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/DownloadFileInfo;->fileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
