const std = @import("std");
const print = std.debug.print;
const ArrayList = std.ArrayList;
const gpa = std.heap.page_allocator;

pub fn main() !void {
    const input = [_]i16{ 0, 1, 5, 2, 4 };
    // const input = [_]i16{ 7032, -3065, 5831, 6764, -8918, 8589, -3687, -8015, -857, -3771, 5185, 6166, 8204, 3924, -7815, 4943, 2914, -1561, -1672, 6286, 8254, 4466, 6162, 1830, -3708, 5375, -9805, 9075, 3333, -5912, -2040, -4265, -7853, 6541, -7475, -2210, -517, 6344, 6395, 7757, 7198, 6478, -7198, 7082, 2647, -6310, 3196, -6404, 216, -7381, 6943, -2765, -3854, -5376, -9322, -7392, 5465, -4657, -7104, -1307, 235, -4943, -7698, -1985, -1381, 8120, 5482, 5858, 6452, -7215, 6860, -3202, 4026, -5073, -3540, -2361, 2110, -6312, 3221, -1679, -3422, -2217, -3383, 6256, 3077, -1998, 3581, -1304, 6405, 8932, 7686, -1674, -2724, 1708, -7254, -9042, -1121, 4711, -2470, 2623, 1616, -7453, 2009, -8580, 7305, -4101, 4995, -8441, -8280, 5727, 1447, 7717, 8834, -624, 7261, 161, -3554, 457, -5031, 5104, -7804, 5708, -7020, 3435, 8482, 7950, -5488, -1436, -5748, 4406, -8692, 4033, 6465, 663, 2117, 7094, 3148, 545, 1520, -3374, -358, -4320, -4242, 3928, -4312, 8506, 3633, -8203, -7182, -1000, -1975, -488, 1385, -8791, 9216, -2236, 3010, 1529, -7557, 7590, -4405, -2552, 9207, -5942, 5681, -3335, 4581, -7427, -7062, 4948, -1832, 8565, -7407, 9731, 3180, -6066, -5286, -2881, -5258, -6077, 8772, -5687, -5066, -366, 7646, -296, 7112, -8306, 8590, 1410, 6655, -4355, -1085, -2182, -1540, 6949, 5735, -270, -269, 6770, -731, 4796, -7690, 7853, 6934, 5644, 9258, 3053, 1522, -7090, 8052, -6237, -7231, -1361, 1370, -2915, -8705, 173, -600, -1200, 3191, -2521, -5936, 6082, -4465, -8557, 6094, 9225, 387, -6951, 3386, -6118, 3015, -3391, 3250, 7351, -9331, 727, -8826, -2981, 3000, -2450, 1575, 639, 6742, 9220, 6238, 2994, 5320, 259, -7300, -3056, -4418, 2376, 877, -7021, -1741, -8437, 9044, -603, -1602, 3526, -6265, -1095, -9364, 3158, -6997, -7163, 1215, -490, -5273, 8472, 7158, -4916, -5702, -544, -5126, -4295, 4731, 4028, 8998, -1543, -3091, 1913, -9870, -2188, 324, -5868, -6781, -4960, 9290, -9706, 4777, 5291, 282, -4080, -1550, -4970, -9826, 9332, 4781, -481, 2586, 8275, 2466, -8285, 3050, 6154, 2735, 655, -1572, 7613, -1216, 7766, 6996, 5513, 5734, -803, 859, 5821, 2771, -4074, 437, -8206, -3448, 841, 5377, 4440, 1996, -6368, -3684, -5362, -5104, -7631, -9298, -1166, -9388, -644, -5411, 2176, 408, 4221, 8653, -1023, 8302, -4695, -6481, -9204, -8967, 4848, -2555, -2262, -5425, -1481, -1663, -5548, -446, -991, -6363, 7155, 5050, -8197, -6670, 4997, -1524, 1362, -1603, -4797, 7611, -4347, 4713, -4260, 8085, -3427, -1995, 2061, 4582, -9112, 8424, 9302, 1420, -2880, -2478, -9128, -4520, -6677, -3882, 8572, -2344, 4029, 9161, 2196, -3991, -6694, -5107, 1943, -7078, -4682, 5564, -5880, 2776, 7501, -2097, -5041, 4642, -7247, 6357, 7777, 1144, 2660, -9008, 6678, -1715, 1972, -419, 5072, -7777, 1162, -7003, 6656, 3948, -5935, -2893, 3474, 2108, 1449, 4361, 2576, 6772, -7713, -7363, -1271, -7688, -7963, 6636, -3012, -548, 8522, -8583, 3421, -3765, 3328, 9224, -7604, 1265, -9573, -1477, 8983, -8465, 2745, -1580, 5873, -2333, -8368, 2304, 7222, 2718, -8776, -5236, 3057, 2256, -4968, 8195, 921, 3194, 1108, 4307, -8754, -3257, 4702, -5038, 1345, -5084, 4378, 5235, -4772, 3073, -403, 1224, -469, 121, -9071, -4093, -3685, 7802, -5370, -6468, -7613, 2358, 2751, 7279, 2438, -5947, -2948, 1211, -9422, 562, -7696, -1790, -7977, -2598, 528, -5980, -3671, -8204, 656, 8164, 4123, 7870, -8653, 7304, 7064, -3287, 2829, -8727, -2982, 8441, -3014, 1417, 3712, -6814, -3653, 3535, 4987, 3498, -1575, 8788, -5698, 8785, -4291, 4628, 3296, 8535, 7306, 3743, -4176, -3032, -4360, -4881, -8218, 1868, 8112, 4374, 5983, 7482, -4378, -5946, 300, 3471, 6116, 1727, 4520, 4906, 7984, -7132, 4228, 5395, 1386, -2823, 7762, -9369, -9286, -2338, -2790, 5355, 1556, 1765, 8606, -2776, -5738, -7844, -7796, -6435, 2673, -8034, 1484, 8025, 8793, -3717, -5266, -6842, -4706, 4055, 5088, 2641, 1168, 7624, -4144, -4910, 3245, 2976, 8206, 4719, 5994, 8594, 7324, 8425, -8587, 5895, -7005, -5313, 4297, -2726, -3280, -7043, -3041, -2382, 7384, -3983, -7414, -5984, 5290, -5746, -7190, 6558, -1690, 7897, 8694, 793, 8882, 6876, 7103, 8395, 622, -1108, 6717, 3994, -6822, -5907, 7701, -3285, -4136, 5266, 2251, -3215, -8367, 647, 7643, 3876, 8240, -9391, -7168, 8844, 8283, 389, 5483, -1058, -3077, 6210, -7813, 6577, 9263, 6407, 4825, -7424, 9254, 9132, -2258, 2291, 3767, 8856, 3346, 1552, 2835, 2346, -2170, -202, -8296, 139, -1184, 6226, -6160, 665, 7696, -8954, 3665, 6864, 4666, -7911, 6156, 3844, 8489, 4024, 5298, 1662, -1490, 3022, -8225, -2330, -9426, -6267, -169, -743, 5955, -722, -7267, 7076, 7523, -3682, -4698, -6223, 9298, 3827, -9872, 2713, 7152, -3495, 2743, -5144, -5621, 2146, -6322, -1701, 5737, 4684, -5957, -9736, 6221, -3321, -7095, -3924, -4016, -6554, -4303, -8993, -8734, 2719, 3045, 5605, -2332, -3591, 7561, 3285, 2434, 4211, -3365, -5470, -1571, 6735, 460, -3923, 1866, 5747, 676, -6353, -4997, 2294, 1312, -5987, 3035, -7493, 7881, 3115, -1195, 8604, 1644, -2028, 2453, -6738, -6028, -7964, -1555, 9143, -7220, -493, 628, -9120, -1470, -7484, -7152, 6128, -8507, 4034, 6716, 593, -6335, -4084, -4164, -2058, -3246, -6818, 2675, -4256, -9676, -3373, -2230, 4826, -3450, -7624, -877, 4332, -7071, -1698, 8576, 6578, 7814, 4390, -7800, 6714, -4198, -5469, 1415, 6998, -2861, -7873, -2675, 2095, 4078, -1748, 810, 7628, -1140, 9156, -4815, 4151, -7356, -3030, -3720, 6281, 9085, -4357, -7743, 7751, -5071, 1109, -9191, 4674, -2655, -7817, 2860, 2768, 4915, -8730, -5831, -516, 7342, 5489, 616, 6356, 7156, -3121, 1824, -2047, -652, -7980, 8767, -4596, 1642, -2816, 8226, -6022, -5767, 1710, -4480, 1143, 6048, -9118, -3615, 1973, 8366, 8920, 144, 1423, 3614, -430, -7621, 5911, -789, -2967, 8046, 745, 5823, -6402, -9937, 5046, 1587, 8444, 1514, -2360, -6725, 6216, 7726, -1097, 2406, -6323, -4203, -3718, -2111, -9307, -8957, -5248, 1785, -7626, 2408, -8247, 8507, 4951, 2676, 6187, -6375, 2601, 916, -2436, 8460, -7809, -3034, -3813, 2590, 5120, 8832, -9622, -2273, -8040, -6210, 3901, 4840, -1141, 710, -3768, -4266, 5522, -212, -8449, 3136, 2598, -8687, 3441, -9130, 7803, -6143, 3244, 3860, -3835, 3986, -3861, 5172, 1476, 3369, 6704, -1237, 2431, -949, -398, 6604, 6711, -6764, -892, 3782, -3534, 6305, 1979, -8724, -494, 120, -2590, 202, -5048, -4717, 8564, 1495, -4674, 240, 3546, -604, 2201, 6696, -4751, -7711, -8936, -4926, 285, 2695, 8044, 6985, -8927, 1218, 5984, 6340, 4115, 1564, 2455, 3368, -7583, -848, 8385, 3938, -1630, 612, -6910, 178, -6816, 1848, 2783, -7472, -964, -8742, -2900, 722, -7745, 3491, -1012, 452, 9002, -8680, -1584, 2731, 8587, 3734, 737, -6676, 1804, 7031, -420, -7741, 2021, -6591, 8776, 2382, -210, 5435, 4343, -3472, 5267, -4233, 5294, 8131, 2147, -3353, -4840, -5862, -1820, 7248, 8123, -2045, 8607, -4218, 5367, 1560, 3461, -6700, -5898, 6835, 3637, 5568, 5712, 8166, -7682, -2156, -7235, -4723, 6372, -2534, 6124, -2022, -2636, -4361, 1486, 4370, 4571, 615, -5486, 7974, 7025, -6585, -1787, 6958, 2245, -6410, 2874, 1555, -6645, -7954, 8842, -2667, -781, 7398, -7622, -8476, -1716, -9936, 8391, -3407, -6775, -6654, -3354, -6906, -1875, -6793, -9030, -2042, -6931, 445, 5648, -1497, 1793, -8004, 1892, -1040, 6364, -6914, 8037, -5547, -7951, -735, -5141, -1051, 7217, -6696, -1015, 2821, -2401, -7432, 450, -7880, 2903, 6289, 3872, -3037, -4184, 5422, -4358, -8923, -3571, -2616, -7748, 2754, 3746, -6935, 5054, 7857, -1726, 3567, 5264, 1136, 5086, 8011, 2635, -3460, -5644, 1128, -1101, 5212, -9828, -5163, 2550, -8240, -7227, 1808, -8289, 2301, 5040, 3383, 127, 7765, 107, -2882, 2522, 5830, -8987, 3163, -9866, 1982, -8104, 385, 3070, -3113, -8262, 7720, -1796, -6592, -7935, -3998, -8726, -6724, 1905, 5856, -6076, 8310, -4201, -7258, 829, 8846, -1400, 276, 4888, 8592, 3255, 7863, 3912, -8191, -4586, -2451, 4876, 3768, -6224, -2171, -467, -5452, -9180, 5839, 7574, 6347, 4938, 5075, 4958, -2463, 411, -3704, -1247, 1585, 2112, -2418, -2518, -9282, 8881, -8418, -2896, -4891, 1676, -1625, 1827, -1641, 3819, 5372, 8544, 1161, 5887, -8237, 7057, 7755, 334, -5480, -1845, 629, -1368, 8698, 3530, 2884, -3059, 1187, -332, -6241, -5187, -2460, 8334, -2662, -9465, 1391, 518, -5905, -7396, 1491, -3253, 8726, 2394, -4786, -843, -2876, 1845, 8796, -8961, 2547, 8581, -9063, 860, 6088, -8205, 6601, 4106, -482, 6145, -1462, 3100, 595, 5071, 7350, -928, 7893, -1775, -3289, -7175, 6582, -7284, 1525, 4531, 482, 6609, -5120, 3916, -6304, 1156, -1260, 7985, -4298, -6180, -3199, 1566, -2668, -3007, 3240, 4604, -2086, 1181, 6174, 1691, -4773, 1898, 2305, 4634, -9450, -2290, -4605, 6822, -5232, -1546, 7101, 855, -9186, -5094, -9917, 8938, 193, -4799, 3031, -1463, -4402, 5567, -3605, -1056, -6416, -8837, -8940, 5463, -3170, 4572, 4522, 6269, -2476, -7945, 2002, -1548, 1557, -2874, -1138, -7641, 1468, -2017, 3560, -258, -5295, -5171, 2662, 5241, 393, -6045, 1438, -3844, 1466, 5292, 1821, -6029, -9744, 8745, 6631, 6823, -7816, -7205, 6520, -4221, -2645, -6815, 7742, -1457, -2559, -3214, 4478, 6426, -2909, -9288, -3011, -9194, 885, 1517, 5265, -7540, 2111, -7317, 5164, -7916, -2794, 6925, 4002, -4743, 3360, 2143, 3578, -6161, -3709, -8384, -6141, 3941, 4137, -4620, 4952, -2585, 4802, -8571, -9267, 2017, -4352, -1731, -7287, 264, 7516, 438, -7687, -3788, 8422, -8697, -4482, -7577, -9476, -529, 2193, 420, -8055, -1242, -1222, 5487, 1841, 9056, -5400, -268, -3999, 7354, -4919, -9052, 8964, 343, -5737, -1906, -5853, -2337, -7418, -8897, 1446, 1022, 2934, -8851, 3831, -703, 527, -6414, 8049, -5275, -7968, 6023, 2106, -6825, -9521, 754, -5322, 749, -6315, 1692, 5205, 3447, 2562, 2871, 7166, 6105, -3985, -161, 3635, -3643, -9383, -3455, -4050, -7958, -7016, 1582, 4483, 8480, -6314, -6636, 4335, 3749, -4822, -7388, -7039, 290, 7970, 297, 2168, 8953, 303, -5721, -3526, -6737, 2749, -3716, -1424, 3747, -6806, 8984, -5305, 108, 6165, -7151, 7786, -1104, 5076, -7485, -8703, 1234, -6889, 3690, 7898, -1176, 6121, 8636, 7896, -4061, -2119, -5565, -3544, 4581, 5460, 2707, 5261, 3891, 4896, 2785, 6307, 5243, 8312, 1077, 5293, 7437, -9734, 7329, -8187, -1801, -9477, -780, 7177, 6120, 4679, -8049, 4057, -3713, 4185, -3304, -6266, -920, 8584, -1767, -1404, -8468, 8243, -903, -8553, -4938, 6214, 5985, -7298, -7615, -3177, -3829, -2648, 826, 4733, -1251, -102, -7176, -1927, -4363, -1274, -640, 8758, -2281, 2018, 5924, 7251, -5967, 7264, -6004, 8912, 1410, 4165, 4722, -9318, 2551, 5051, 558, 4077, 3019, 3914, -7462, 2901, 255, -401, -9047, 5065, 8196, 1623, 5582, 3513, 1463, -8832, 2962, 7419, 2666, -7347, 6865, -1881, -112, -6148, 2773, -7652, -6902, -8290, 7326, -4704, -9894, -7060, 6655, 6671, 7066, 8982, -128, -1429, -8101, 5363, 707, -9271, 7886, 1955, -5273, 4977, -7354, 5744, 2370, -3292, -2447, -4622, 6948, 2238, -882, -1723, 1794, -3708, 183, -5352, 3638, -8900, 2310, -2378, -9341, 5936, 3200, -106, 6594, 8329, 1493, -7262, -317, 3046, 5618, 5408, 294, -3021, 1091, 4960, 7571, 2724, -4888, -5725, 8332, 1716, 8117, -900, -4121, 6672, -3920, 3821, -6803, -5623, 1148, -8792, 2155, 8995, 5670, 2302, 5402, -9425, 7595, 706, 4786, -8467, 6501, -1597, 3504, -3449, -2510, 7150, 3462, -620, -3884, -1228, 2393, 8224, -5921, -226, -4526, -9272, -4556, -5867, -5903, -7785, -9308, -4285, -3297, 7184, 6117, 1141, -2848, -9040, -8555, -8495, -5636, 2753, 7113, 8330, 5965, -1620, 4199, 2994, 8027, -1635, 2709, 7880, 7511, 1711, 3525, -1812, 8899, 6872, -8354, -3691, -198, -1198, 7635, -3651, 858, -7928, -4774, -5850, 1693, -879, -619, 378, 2304, 5480, 5362, 5118, 759, 2521, 8799, -4582, -9482, 7914, -3162, 2548, -9440, 5872, -383, 8685, -2569, 8757, -554, 2705, 1193, 2115, 7623, 3701, -7770, 3316, -351, 7522, -3677, 8591, 5701, -3274, -4566, -2121, 4133, -6195, -8316, -2095, 413, -1878, 5972, -9374, 7084, -7482, -3918, 4315, -3588, 1918, 6605, 6767, -5197, 6316, 6055, 686, 6474, -672, 5453, 626, -711, 6437, -6805, 3618, -5427, -9571, 2183, 4982, 7377, 6158, -1764, -2184, 5437, 246, 2938, -3852, 3256, -5104, -1316, 5482, 6258, 8528, -6713, 105, 7408, 5933, 8509, -4912, 1328, -2593, 4513, 8547, 5276, -1084, 7435, -654, -456, 6817, -3360, 1250, 6147, 3531, 6541, -9057, -246, -2657, -1669, -3207, 2374, 2716, -5416, 714, 1088, -2572, -6403, 5958, 4870, -4484, 2487, 368, -4678, 4804, -3749, -7134, 8182, -6457, -4985, 8180, -2027, 2984, 7453, -1604, -1272, 2838, -3205, 267, -4476, -5821, 5578, 7887, -7050, -4741, 5630, -9601, -1394, 5864, 1616, -4267, -8893, -1912, 8903, 5935, 2922, -5297, -2973, 8742, -7956, -6844, 8878, -1829, 4014, -7074, -1249, -2158, 7215, -440, 8287, 8817, -3176, 142, -6509, -2624, 491, -4558, -7180, 799, -393, -5286, 1737, -6094, -3195, 4692, 1150, -8320, -296, -1032, -4795, -7363, 408, -2310, -4426, -4646, -974, 4554, 8838, -295, 1883, -5166, -4986, 4355, 4658, 4120, -1621, -9187, 228, -1570, -1327, 7345, -5150, -4882, 6882, 8765, 3674, 6665, 8031, 1217, 6877, 1666, -1425, -692, -2649, 3042, 6303, -6185, -4918, -7290, -9404, -3706, 1492, -6256, -6021, 7921, -4372, -6415, -6932, -5691, -1798, 5390, -8926, -1216, 1342, 2850, -7987, -2522, -273, 1214, 4388, -448, -4167, -8010, 7497, -8442, 4986, 1401, -1144, 8898, -1450, 2401, -3154, -779, -6222, -7195, 1853, -2628, 4565, -5483, -859, 3261, 6687, -5532, 6309, -223, -563, -4989, -7410, 642, 4931, -7891, 5227, 3573, -746 };

    const length = try lis(&input);
    print("{d}\n", .{length});
}

fn lis(input: []const i16) !i16 {
    // print("Getting results for input: {any}\n", .{input});
    // const start_time = std.time.nanoTimestamp();
    var maxLength: i16 = 1;
    var lists = ArrayList(ArrayList(i16)).init(gpa);
    defer lists.deinit();

    for (input, 0..) |number, i| {
        // print("\nInserting number: {}\n", .{number});

        if (i == 0) {
            var newSublist = ArrayList(i16).init(gpa);
            // defer newSublist.deinit();
            try newSublist.append(number);
            try lists.append(newSublist);
        } else {
            var extended = false;

            for (lists.items) |*sublist| {
                if (number > sublist.getLast()) {
                    extended = true;
                    try sublist.append(number);
                    if (sublist.items.len > maxLength) {
                        maxLength = @intCast(sublist.items.len);
                    }
                }
            }

            if (!extended) {
                const newSublist = try createNewSublist(&lists, &number);
                // defer newSublist.deinit();
                try lists.append(newSublist);
                if (newSublist.items.len > maxLength) {
                    maxLength = @intCast(newSublist.items.len);
                }
            }
        }

        // for (list.items) |*sublist| {
        //     print("{any}\n", .{sublist.items});
        // }
    }

    // const end_time = std.time.nanoTimestamp();
    // print("Time: {} ns\n", .{end_time - start_time});

    // print("Max LIS is: {d} for Input: {any}\n", .{ maxLength, input });
    return maxLength;
}

fn createNewSublist(lists: *ArrayList(ArrayList(i16)), newNumber: *const i16) !ArrayList(i16) {
    var newList = ArrayList(i16).init(gpa);
    var maxLength: i16 = -1;

    var tempList = ArrayList(i16).init(gpa);
    defer tempList.deinit();

    for (lists.*.items) |*sublist| {
        tempList.clearAndFree();

        for (sublist.items) |number| {
            if (newNumber.* > number) {
                try tempList.append(number);
            } else {
                try tempList.append(newNumber.*);
                break;
            }
        }

        if (tempList.items.len > maxLength) {
            maxLength = @intCast(tempList.items.len);

            newList.clearAndFree();
            try newList.appendSlice(tempList.items);
        }
    }
    return newList;
}

test "case1" {
    const input = [_]i16{ 10, 9, 2, 5, 3, 7, 101, 18 };
    try std.testing.expect(try lis(&input) == 4);
}

test "case1a" {
    const input = [_]i16{ 10, 9, 2, 5, 0, 1, 3, 7, 101, 18 };
    try std.testing.expect(try lis(&input) == 5);
}

test "case1b" {
    const input = [_]i16{ 10, 90, 200, 500, 0, 100, 300, 700, 10100, 1800 };
    try std.testing.expect(try lis(&input) == 6);
}

test "case2" {
    const input = [_]i16{ 0, 1, 0, 3, 2, 3 };
    try std.testing.expect(try lis(&input) == 4);
}

test "case3" {
    const input = [_]i16{ 7, 7, 7, 7, 7, 7, 7 };
    try std.testing.expect(try lis(&input) == 1);
}

test "case4" {
    const input = [_]i16{ 0, 1, 3 };
    try std.testing.expect(try lis(&input) == 3);
}

test "case5" {
    const input = [_]i16{-15};
    try std.testing.expect(try lis(&input) == 1);
}

test "case6" {
    const input = [_]i16{ 2, 3 };
    try std.testing.expect(try lis(&input) == 2);
}

test "case7" {
    const input = [_]i16{ -104, -50, 0, 50, 100, 104 };
    try std.testing.expect(try lis(&input) == 6);
}

test "case8" {
    const input = [_]i16{ 104, 103, 102, 101, 100, 99 };
    try std.testing.expect(try lis(&input) == 1);
}

test "case9" {
    const input = [_]i16{ 10, 20, 30, 10, 20, 30, 40, 50 };
    try std.testing.expect(try lis(&input) == 5);
}

test "case10" {
    const input = [_]i16{ 5, 4, 3, 2, 1 };
    try std.testing.expect(try lis(&input) == 1);
}

test "case11" {
    const input = [_]i16{ 1, 2, 3, 4, 5 };
    try std.testing.expect(try lis(&input) == 5);
}

test "case12" {
    const input = [_]i16{ 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 };
    try std.testing.expect(try lis(&input) == 1);
}

test "case13" {
    const input = [_]i16{ -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    try std.testing.expect(try lis(&input) == 12);
}

test "case14" {
    const input = [_]i16{ 10, 20, 10, 20, 30, 10, 40 };
    try std.testing.expect(try lis(&input) == 4);
}

test "case15" {
    const input = [_]i16{ 0, -1, 1, -2, 2, -3, 3 };
    try std.testing.expect(try lis(&input) == 4);
}

test "case16" {
    const input = [_]i16{ -104, 104, -103, 103, -102, 102 };
    try std.testing.expect(try lis(&input) == 4);
}

test "case17" {
    const input = [_]i16{ 10, 22, 9, 33, 21, 50, 41, 60, 80 };
    try std.testing.expect(try lis(&input) == 6);
}

test "case18" {
    const input = [_]i16{ 2, 2, 2, 2, 2, 2 };
    try std.testing.expect(try lis(&input) == 1);
}

test "case19" {
    const input = [_]i16{ 1, 3, 2, 3, 1, 4 };
    try std.testing.expect(try lis(&input) == 4);
}

test "case20" {
    const input = [_]i16{ -104, -103, -102, -101, -100 };
    try std.testing.expect(try lis(&input) == 5);
}

test "case21" {
    const input = [_]i16{ 100, 101, 102, 103, 104, -104 };
    try std.testing.expect(try lis(&input) == 5);
}

test "case22" {
    const input = [_]i16{ 50, 20, 30, 10, 20, 30, 40 };
    try std.testing.expect(try lis(&input) == 4);
}

test "case23" {
    const input = [_]i16{ 5, 1, 6, 2, 7, 3, 8, 4, 9 };
    try std.testing.expect(try lis(&input) == 5);
}

test "case24" {
    const input = [_]i16{ 10, 5, 1, 2, 3, 4, 5 };
    try std.testing.expect(try lis(&input) == 5);
}

test "case25" {
    const input = [_]i16{ -10, -5, 0, 5, 10, 15, 20 };
    try std.testing.expect(try lis(&input) == 7);
}

test "case26" {
    const input = [_]i16{ -1, -1, -1, -1, -1 };
    try std.testing.expect(try lis(&input) == 1);
}

test "case27" {
    const input = [_]i16{ 1, 2, 1, 2, 1, 2, 1, 2 };
    try std.testing.expect(try lis(&input) == 2);
}

test "case28" {
    const input = [_]i16{ 10, 1, 20, 2, 30, 3, 40, 4, 50, 5 };
    try std.testing.expect(try lis(&input) == 5);
}

test "case29" {
    const input = [_]i16{ 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 };
    try std.testing.expect(try lis(&input) == 10);
}

test "case30" {
    const input = [_]i16{ 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23 };
    try std.testing.expect(try lis(&input) == 12);
}

test "case31" {
    const input = [_]i16{ -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50 };
    try std.testing.expect(try lis(&input) == 11);
}

test "case32" {
    const input = [_]i16{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
    try std.testing.expect(try lis(&input) == 1);
}

test "case33" {
    const input = [_]i16{ 104, -104, 103, -103, 102, -102, 101, -101 };
    try std.testing.expect(try lis(&input) == 4);
}

test "case34" {
    const input = [_]i16{ -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    try std.testing.expect(try lis(&input) == 13);
}

test "case35" {
    const input = [_]i16{ 10, 10, 20, 20, 30, 30, 40, 40, 50, 50 };
    try std.testing.expect(try lis(&input) == 5);
}

test "case36" {
    const input = [_]i16{ 104, 103, 102, 101, 100, -100, -101, -102, -103, -104 };
    try std.testing.expect(try lis(&input) == 1);
}

test "case37" {
    const input = [_]i16{ 1, 3, 2, 4, 3, 5, 4, 6, 5, 7, 6, 8, 7, 9 };
    try std.testing.expect(try lis(&input) == 8);
}

test "case38" {
    const input = [_]i16{ 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120 };
    try std.testing.expect(try lis(&input) == 12);
}

test "case39" {
    const input = [_]i16{ 50, 40, 30, 20, 10, 0, -10, -20, -30, -40, -50 };
    try std.testing.expect(try lis(&input) == 1);
}

test "case40" {
    const input = [_]i16{ 5, 4, 3, 2, 1, 6, 7, 8, 9, 10 };
    try std.testing.expect(try lis(&input) == 6);
}

test "case41" {
    const input = [_]i16{ -10, -20, -30, -40, -50, -60, -70, -80, -90, -100 };
    try std.testing.expect(try lis(&input) == 1);
}

test "case42" {
    const input = [_]i16{ -1, -2, -3, -4, -5, -6, -7, -8, -9, -10 };
    try std.testing.expect(try lis(&input) == 1);
}
