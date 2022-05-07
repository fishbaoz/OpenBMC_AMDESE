#ifndef RENESAS_VR_UPDATE_H
#define RENESAS_VR_UPDATE_H

#define RENESAS_VR            ("Renesas")
#define GEN2                  ("GEN2")
#define GEN3                  ("GEN3")

#define STATUS_BIT_0          (0)
#define STATUS_BIT_1          (1)
#define STATUS_BIT_2          (2)
#define STATUS_BIT_3          (3)
#define STATUS_BIT_4          (4)
#define STATUS_BIT_5          (5)
#define STATUS_BIT_6          (6)
#define STATUS_BIT_7          (7)
#define STATUS_BIT_8          (8)
#define BIT_ENABLE            (1)

#define DEVICE_REVISON        (0x2000003)
#define INT_255               (0xFF)
#define MAX_RETRY             (10)
#define SLEEP                 (2500)
#define RAA229613             ("RAA229613")
#define RAA229625             ("RAA229625")
#define RAA229620             ("RAA229620")
#define ISL68220              ("ISL68220")

#define MAX_CMD_LINE_ARGUMENT 6
#define SUCCESS               0
#define FAILURE              -1
#define MAXIMUM_SIZE         255

#define DMA_WRITE            0xC7
#define DMA_READ             0xC5

#define DISABLE_PACKET       0x00A2
#define FINISH_CAPTURE       0x0002
#define FINISH_CMD_CODE      0xE7

#define DEV_ID_CMD           0xAD
#define DEV_REV_REV          0xAE

#define GEN2_PRGM_STATUS     0x0707
#define GEN3_PRGM_STATUS     0x007E

#define GEN2_0_7_BANK_REG    0x0709
#define GEN2_8_15_BANK_REG   0x070A
#define GEN3_BANK_REG        0x007F

#define GEN2_NVM_SLOT_ADDR   0x00C2
#define GEN3_NVM_SLOT_ADDR   0x0035

#define GEN2_CRC_ADDR        0x003F
#define GEN3_CRC_ADDR        0x0094

struct vr_update_context {
    int i2c_bus;
    int i2c_slave_addr;
    char *update_file_path;
    char *model_name;
    char gen[8];
};

int gen2_programming(void);
int gen3_programming(void);
int vr_update_open_dev(void);
int check_available_nvm_slots(u_int16_t);
int gen3_device_id_validation(void);
int gen2_device_id_validation(void);
int vr_update_header_file_open(void);
int vr_update_header_file_close(void);
int write_hex_file_to_device(void);
int gen3_poll_programmer_status_register(void);
int gen2_poll_programmer_status_register(void);
int read_bank_status_register(u_int16_t);
int bank_status_bits(int, int);
int disable_packet_capture(void);
int device_revision_verification(void);

static struct vr_update_context vr_context;

#endif
